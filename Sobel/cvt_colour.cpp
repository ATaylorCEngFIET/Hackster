
#include "cvt_colour.hpp"

void image_filter(AXI_STREAM& INPUT_STREAM, AXI_STREAM& OUTPUT_STREAM)//, int rows, int cols)
{

#pragma HLS INTERFACE axis port=INPUT_STREAM
#pragma HLS INTERFACE axis port=OUTPUT_STREAM

RGB_IMAGE  img_0(MAX_HEIGHT, MAX_WIDTH);
GRAY_IMAGE img_1(MAX_HEIGHT, MAX_WIDTH);
GRAY_IMAGE  img_2(MAX_HEIGHT, MAX_WIDTH);
GRAY_IMAGE  img_2a(MAX_HEIGHT, MAX_WIDTH);
GRAY_IMAGE  img_2b(MAX_HEIGHT, MAX_WIDTH);
GRAY_IMAGE  img_3(MAX_HEIGHT, MAX_WIDTH);
GRAY_IMAGE  img_4(MAX_HEIGHT, MAX_WIDTH);
GRAY_IMAGE  img_5(MAX_HEIGHT, MAX_WIDTH);
RGB_IMAGE  img_6(MAX_HEIGHT, MAX_WIDTH);
;

#pragma HLS dataflow
hls::AXIvideo2Mat(INPUT_STREAM, img_0);
hls::CvtColor<HLS_BGR2GRAY>(img_0, img_1);
hls::GaussianBlur<3,3>(img_1,img_2);
hls::Duplicate(img_2,img_2a,img_2b);
hls::Sobel<1,0,3>(img_2a, img_3);
hls::Sobel<0,1,3>(img_2b, img_4);
hls::AddWeighted(img_4,0.5,img_3,0.5,0.0,img_5);
hls::CvtColor<HLS_GRAY2RGB>(img_5, img_6);

hls::Mat2AXIvideo(img_6, OUTPUT_STREAM);
}
