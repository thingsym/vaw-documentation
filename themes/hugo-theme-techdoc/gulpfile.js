'use strict';

var gulp = require('gulp');
var $ = require('gulp-load-plugins')();

var scsslint = require('gulp-scss-lint');
require('es6-promise').polyfill();

var runSequence = require('run-sequence');

var browserSync = require('browser-sync').create();
var reload = browserSync.reload;

var src_paths = {
  sass: ['src/*.scss'],
};

var dest_paths = {
  style: 'static/css/',
  browserSync: ''
};

gulp.task('lint:sass', function() {
  return gulp.src(src_paths.sass)
    .pipe($.plumber({
      errorHandler: function(err) {
        console.log(err.messageFormatted);
        this.emit('end');
      }
    }))
    .pipe(scsslint({
        'reporterOutputFormat': 'Checkstyle',
        'bundleExec': true,
        'config': 'scss-lint.yml'
    }))
    .pipe(scsslint.failReporter());
});

gulp.task('sass:style', function() {
  return gulp.src(src_paths.sass)
    .pipe($.plumber({
      errorHandler: function(err) {
        console.log(err.messageFormatted);
        this.emit('end');
      }
    }))
    .pipe($.sass( { outputStyle: 'expanded' } ).on( 'error', $.sass.logError ) )
    .pipe($.autoprefixer({
        browsers: ['last 2 versions'],
        cascade: false
    }))
    .pipe(gulp.dest(dest_paths.style))
    .pipe(browserSync.stream())
    .pipe($.cssnano())
    .pipe($.rename({ suffix: '.min' }))
    .pipe(gulp.dest(dest_paths.style));
});

gulp.task('browser-sync', function() {
  browserSync.init({
    server: {
      baseDir: dest_paths.browserSync
    }
  });

  gulp.watch(src_paths.sass, ['default']).on('change', reload);
});

gulp.task('lint', ['lint:sass']);
gulp.task('sass', ['sass:style']);
gulp.task('serve', ['browser-sync']);

gulp.task('default', function(callback) {
  runSequence(
    'lint',
    'sass',
    callback
  );
});

gulp.task('watch', function() {
  gulp.watch(src_paths.sass, ['default']);
});
