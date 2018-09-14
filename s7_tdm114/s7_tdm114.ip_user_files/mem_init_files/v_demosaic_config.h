
#ifndef _V_DEMOSAIC_CONFIG_H_
#define _V_DEMOSAIC_CONFIG_H_

#define SAMPLES_PER_CLOCK       1
#define MAX_COLS                1280
#define MAX_ROWS                800
#define MAX_DATA_WIDTH          8
#define INTERPOLATION_ALGORITHM 0
#define ENABLE_ZIPPER_REMOVAL   true
#define USE_URAM                0

#define NR_COMPONENTS           3
#define IN_BITS_PER_SAMPLE      (MAX_DATA_WIDTH)
#define IN_BITS_PER_CLOCK       (IN_BITS_PER_SAMPLE*SAMPLES_PER_CLOCK)
#define IN_AXIS_DATA_WIDTH      ((IN_BITS_PER_CLOCK+7)*8/8) // Rounded up to bytes
#define OUT_BITS_PER_SAMPLE     (NR_COMPONENTS*MAX_DATA_WIDTH)
#define OUT_BITS_PER_CLOCK      (OUT_BITS_PER_SAMPLE*SAMPLES_PER_CLOCK)
#define OUT_AXIS_DATA_WIDTH     ((OUT_BITS_PER_CLOCK+7)*8/8)    // Rounded up to bytes

#endif
