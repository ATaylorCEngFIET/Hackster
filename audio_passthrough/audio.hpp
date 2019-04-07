#include <ap_fixed.h>
#include <ap_axi_sdata.h>
#include "hls_stream.h"

typedef ap_axiu< 32, 1, 1, 1> AXITYPE;
typedef hls::stream<AXITYPE> AXI_STREAM;

void audio_top(AXI_STREAM& AudioA, AXI_STREAM& AudioB);

