<?php


$cmd_new = "ls";
exec($cmd_new,$output);
//count($output)!=""
if(true)
{
    require 'vendor/autoload.php';

    ini_set('display_errors', '1');
    ini_set('display_startup_errors', '1');
    error_reporting(E_ALL);
    
    $logger = "";
    $gif_width = "100";
    $gif_height = "100";
    $thumbnail_size = "400x400";
    $interval = 5;
    $thumbnail_image_name = "thumb.png";
    
    
    
    $ffmpeg_lib="C:\ffmpeg\ffmpeg";
    $ffprobe_lib="C:\ffmpeg\ffprobe";
    
    
    $ffmpeg = FFMpeg\FFMpeg::create(array(
        'ffmpeg.binaries'  => $ffmpeg_lib,
        'ffprobe.binaries' => $ffprobe_lib,
        'timeout'          => 3600, // The timeout for the underlying process
        'ffmpeg.threads'   => 12,   // The number of threads that FFMpeg should use
    ), null);
    
    echo "Congrats! FFMPEG is successfully installed. You are good to go";
    
}
else
{
    echo "You have to enable exec , shell_exec() from your server , <a href='http://demo.qboxus.com/tictic/doc/#server-requirements'>Follow The Documentation Step 5</a> ";
}






?>