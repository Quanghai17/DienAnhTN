<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use TCG\Voyager\Models\Page;
use TCG\Voyager\Models\Post;
use function Couchbase\basicDecoderV1;

class FeedbackController extends Controller
{
  /**
   * Display a listing of the resource.
   *
   * @return Application|Factory|View|Response
   */
  public function index()
  {
    //
  }

  /**
   * Show the form for creating a new resource.
   *
   * @return Response
   */
  public function create()
  {
    //
  }

  /**
   * Store a newly created resource in storage.
   *
   * @param  \Illuminate\Http\Request  $request
   * @return Response
   */
  public function store(Request $request)
  {
    $quick = $request->input('quick', false);
    $validated = $request->validate([
      'email' => 'email:rfc,dns',
      
    ]);

    if (!$quick) {
      $validated = $request->validate([
        'name' => 'required|max:120',
        // 'phone' => 'required|numeric|min:10'
      ]);
    }
   
    try {
      $alert = [
        "type" => "success",
        "title" => __("Thành công"),
        "body" => __("Cảm ơn bạn đã liên hệ, chúng tôi sẽ sớm phản hồi cho bạn!")
      ];
      // dd($request->all());
      $feedback= new \App\Models\Contact();
      $feedback->name= $request->name;
      $feedback->email= $request->email;
      $feedback->phone= $request->phone ?? '';
      $feedback->content= $request->content;
      // $feedback->title= $request->title;
      $feedback->save();
    } catch (\Exception $e) {
      $alert = [
        "type" => "error",
        "title" => __("Không thành công"),
        "body" => __("Có lỗi đã xảy ra, vui lòng thử lại!")
      ];
    }

    return redirect()->back()->with('alert', $alert);
  }

  /**
   * Display the specified resource.
   *
   * @param  int  $id
   * @return Response
   */
  public function show($id)
  {
    //
  }

  /**
   * Show the form for editing the specified resource.
   *
   * @param  int  $id
   * @return Response
   */
  public function edit($id)
  {
    //
  }

  /**
   * Update the specified resource in storage.
   *
   * @param  \Illuminate\Http\Request  $request
   * @param  int  $id
   * @return Response
   */
  public function update(Request $request, $id)
  {
    //
  }

  /**
   * Remove the specified resource from storage.
   *
   * @param  int  $id
   * @return Response
   */
  public function destroy($id)
  {
    //
  }
}
