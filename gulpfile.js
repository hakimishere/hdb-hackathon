'use strict'
const gulp = require('gulp')
const sass = require('gulp-sass')
const plumber = require('gulp-plumber')
const notify = require('gulp-notify')
const browserSync = require('browser-sync')
const autoprefixer = require('gulp-autoprefixer')
const sourcemaps = require('gulp-sourcemaps')
const uglify = require('gulp-uglify')
// const gulpBrowser = require('gulp-browserify')
// const browserify = require('browserify')
// const transform = require('vinyl-transform')
// const concat = require('gulp-concat')
// const useref = require('gulp-useref')

gulp.task('default', ['watch'])

gulp.task('watch', ['browserSync', 'sass'], function () {
  gulp.watch('./app/styles/scss/*.scss', ['sass'])
  gulp.watch('./index.html', browserSync.reload)
  gulp.watch('./app/html/*.html', browserSync.reload)
  gulp.watch('./app/js/dev/*/*.js', browserSync.reload)
})

gulp.task('sass', function () {
  return gulp.src('./app/styles/scss/*.scss')
    .pipe(customPlumber('Error Running Sass'))
    .pipe(sourcemaps.init())
    .pipe(sass())
    .pipe(autoprefixer({
      browsers: ['last 2 versions']
    }))
    .pipe(sourcemaps.write())
    .pipe(gulp.dest('./app/styles/css'))
    .pipe(browserSync.reload({
      stream: true
    }))
})

// let transforms = [
//   {
//     transform: 'babelify',
//     options: {presets: ['es2015']}
//   }
// ]

gulp.task('js', function () {
  return gulp.src('./app/js/dev/*/*.js')
    .pipe(customPlumber('Error Running Js'))
    .pipe(sourcemaps.init())
    .pipe(uglify())
    .pipe(gulp.dest('./app/js'))
    .pipe(browserSync.reload({
      stream: true
    }))
})

gulp.task('browserSync', function () {
  browserSync({
    server: {
      baseDir: './'
    // browser: 'google-chrome'
    }
  })
})

function customPlumber (errTitle) {
  return plumber({
    errorHandler: notify.onError({
      title: errTitle || 'Error running Gulp',
      message: 'Error: <%= error.message %>',
      sound: 'Hero'
    })
  })
}
