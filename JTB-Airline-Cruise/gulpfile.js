/* Declartion of gulp variables */
var gulp = require('gulp');
const sass = require('gulp-sass')(require('sass'));
postcss = require("gulp-postcss");
autoprefixer = require("autoprefixer");
var sourcemaps = require('gulp-sourcemaps'); 
var browserSync = require('browser-sync').create(); 
cssbeautify = require('gulp-cssbeautify');
var beautify = require('gulp-beautify');


/*******************  LTR   ******************/


//_______ task for scss folder to css main style 
gulp.task('watch', function() {
	console.log('Command executed successfully compiling SCSS in assets.');
	return gulp.src('Assets/scss/**/*.scss') 
	.pipe(sourcemaps.init())                       
	.pipe(sass())
	.pipe(sourcemaps.write(''))  
	.pipe(beautify.css({ 
		indent_size: 4,
	}))	
	.pipe(gulp.dest('Assets/css'))
	.pipe(browserSync.reload({
		  stream: true
	}))
})

//_______ task for scss folder to css main style 
gulp.task('plugins', function() {
	return gulp.src('Assets/scss/plugins.scss') 
	   .pipe(sourcemaps.init())                       
	   .pipe(sass())
	   .pipe(sourcemaps.write(''))   
	   .pipe(gulp.dest('Assets/css'))
	   .pipe(browserSync.reload({
		 stream: true
   }))
})

 
//_______task for sidemenu
gulp.task('menu', function(){
	return gulp.src('Assets/css/dashboard/sidemenu.scss')
	.pipe(sourcemaps.init())
	.pipe(sass())
	.pipe(sourcemaps.write('.'))
	.pipe(beautify.css({ 
		indent_size: 4,
	}))
	.pipe(gulp.dest('Assets/css/dashboard'));
		
})

//_______task for admin-custom
gulp.task('admin', function(){
	return gulp.src('Assets/css/dashboard/admin-custom.scss')
	.pipe(sourcemaps.init())
	.pipe(sass())
	.pipe(sourcemaps.write('.'))
	.pipe(beautify.css({ 
		indent_size: 4,
	}))
	.pipe(gulp.dest('Assets/css/dashboard'));
		
})





