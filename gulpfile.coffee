gulp       = require "gulp"
less       = require "gulp-less"
browserify = require "browserify"
coffeex    = require "coffee-reactify"
concat     = require "gulp-concat"
source     = require "vinyl-source-stream"
livereload = require "gulp-livereload"
plumber    = require "gulp-plumber"

gulp.task "browserify", ->

	browserify("./src/app.coffee")
	.transform('coffee-reactify')
	.bundle()
	.pipe(source('main.js'))
	.pipe(gulp.dest('./dist/'))
	.pipe(livereload())

gulp.task "less", ->
	gulp.src "./src/css/**/*.less"
	.pipe plumber()
	.pipe less()
	.pipe concat('main.css')
	.pipe gulp.dest('./dist/')
	.pipe livereload()

gulp.task "default", ["browserify", "less"], ->
	livereload.listen()
	gulp.watch "src/**/*.*", ["browserify", "less"]