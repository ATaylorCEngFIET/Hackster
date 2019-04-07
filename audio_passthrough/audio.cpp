#include "audio.hpp"


void audio_top(AXI_STREAM& AudioA, AXI_STREAM& AudioB){
#pragma HLS INTERFACE axis port=AudioA
#pragma HLS INTERFACE axis port=AudioB
AXITYPE dataInA;
while(1){
	 dataInA = AudioA.read();
	 AudioB.write(dataInA);
	}
}
