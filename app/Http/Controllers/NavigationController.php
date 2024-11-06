<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Course;
use App\Models\Writer;
use Illuminate\Http\Request;

class NavigationController extends Controller
{
    public function homePage(){

        $categories = Category::all();
        $courses = Course::all();
        return view('index', compact('categories', 'courses'));
    }

    public function categoryPage($category_name){
        $categories = Category::all();
        $category = $categories->where('name', $category_name)->first();

        if ($category) {
            $courses = Course::with('category', 'writer')->where('category_id', $category->id)->get();
        } else {
            $courses = collect(); 
        }

        return view('category', compact('categories', 'courses', 'category_name'));
    }

    public function aboutUsPage(){
        $categories = Category::all();
        
        return view('aboutUs', compact('categories'));
    }

    public function courseDetailPage($course_id){

        $categories = Category::all();
        $course = Course::with(['writer', 'category'])->find($course_id);

        return view('courseDetail', [
            'categories' => $categories,
            'course' => $course,
            'category_name' => $course->category->name,
        ]);
    }

    public function writersPage(){
        $categories = Category::all();
        $writers = Writer::all();
        return view('writers', compact('categories', 'writers'));
    }

    public function writerDetailPage($writers_id){
        $categories = Category::all();
        $courses = Course::with('writer')->where('writer_id', 'LIKE', $writers_id)->get();
        $writer = Writer::findOrFail($writers_id);
        return view('writerDetail', compact('categories', 'courses', 'writer'));
    }

    public function popularPage(){
        $courses = Course::with('writer')->paginate(3);
        $categories = Category::all();

        return view('popular', compact('categories', 'courses'));
    }

}
