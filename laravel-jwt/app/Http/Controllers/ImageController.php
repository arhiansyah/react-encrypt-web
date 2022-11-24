<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Response;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class ImageController extends Controller
{
    protected function showImage($filename)
    {
        // $path = $folder.'/'.$filename;
        $exists = Storage::disk('public')->exists($filename);

        if ($exists) {

            //     //get content of image
            $content = Storage::get('public/' . $filename);

            //     //get mime type of image
            $mime = Storage::mimeType('public/' . $filename);
            //     //prepare response with image content and response code
            $response = Response::make($content, 200);
            //     //set header 
            $response->header("Content-Type", $mime);
            //     // return response
            return $response;
        } else {
            $this->getDefaultImage();
        }
    }
    protected function getDefaultImage()
    {
        $content = Storage::get('public/default/noimage.png');
        $mime = Storage::mimeType('public/default/noimage.png');
        $response = Response::make($content, 200);
        $response->header("Content-Type", $mime);
        return $response;
    }
    public function uploadMultipleImagesHotel(Request $request)
    {
        $image = $request->file('file');

        $imageName = date('YmdHis') . "." . $image->getClientOriginalExtension();
        $path =  'hotel_images/' . $imageName;
        $image->storeAs('public/hotel_images', $imageName);

        return response()->json(['success' => true, 'filename' => $path]);
    }
}
