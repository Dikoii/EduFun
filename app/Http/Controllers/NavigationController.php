<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Course;
use Illuminate\Http\Request;

class NavigationController extends Controller
{
    public function homePage(){

        $categories = Category::all();
        
        return view('index', compact('categories'));
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

        if (!$course) {
            return redirect()->route('categoryPage', ['category_name' => $course->category->name])->with('error', 'Course not found.');
        }

        return view('courseDetail', [
            'categories' => $categories,
            'course' => $course,
            'category_name' => $course->category->name,
        ]);
    }

    public function writersPage(){
        $categories = Category::all();
        
        return view('writers', compact('categories'));
    }
}
