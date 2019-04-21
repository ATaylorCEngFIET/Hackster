<project xmlns="com.autoesl.autopilot.project" name="cvt_colour" top="image_filter" includeRunResult="true">
    <files>
        <file name="../cvt_colour_tb.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas"/>
        <file name="cvt_colour/test.bmp" sc="0" tb="false" cflags=""/>
        <file name="cvt_colour/cvt_colour.hpp" sc="0" tb="false" cflags=""/>
        <file name="cvt_colour/cvt_colour.cpp" sc="0" tb="false" cflags=""/>
    </files>
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" clean="true" csimMode="2" lastCsimMode="2"/>
    </Simulation>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

