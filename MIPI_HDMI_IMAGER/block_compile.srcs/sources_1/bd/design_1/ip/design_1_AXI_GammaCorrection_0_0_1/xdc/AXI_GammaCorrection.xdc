# These paths refer to Gamma value updates from AXI Lite interface to the Gamma Correction IP
# They refer to clock crossing from AXI Lite clock to AXI Video Stream clock
# I think these clock crossings are safe (and therefore we can ignore timing on them) as,
# in a worst-case scenario, metastability would corrupt part of a video frame. This would not
# be visible to the user, and subsequent frames would be correct.
# We also need to take into account that Gamma factor changes are performed manually by the user,
# requiring visual feedback; therefore, they don't occur very often.
#
# IMPORTANT! For applications performing automatic Gamma factor adjustment and/or for
# applications capturing frames for automatic processing purposes, these clock crossings would
# need to be treated differently (e.g. using a handshaking mechanism for transferring the new
# Gamma factor value between the two clock domains).
set_false_path -from [get_cells -hier -filter {NAME=~ *sGammaReg*]}] -to [get_cells -hier -filter {NAME=~ *rStoredData*]}]