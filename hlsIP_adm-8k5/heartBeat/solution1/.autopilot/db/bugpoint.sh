export PATH=/cad1/Xilinx/Vivado/2018.1/lnx64/tools/gcc/bin:/cad1/Xilinx/Vivado/2018.1/msys/bin:/cad1/Xilinx/Vivado/2018.1/bin:/cad1/Xilinx/Vivado/2018.1/lnx64/bin:/cad1/Xilinx/Vivado/2018.1/lnx64/tools/bin:/cad1/Xilinx/Vivado/2018.1/lnx64/tools/clang/bin:/cad1/Xilinx/Vivado/2018.1/bin:/cad1/Xilinx/Vivado/2018.1/tps/lnx64/jre/bin:/cad1/Xilinx/SDK/2018.1/bin:/cad1/Xilinx/Vivado/2018.1/ids_lite/ISE/bin/lin64:/cad1/Xilinx/SDK/2018.1/gnu/microblaze/lin/bin:/cad1/Xilinx/SDK/2018.1/gnu/arm/lin/bin:/cad1/Xilinx/SDK/2018.1/gnu/microblaze/linux_toolchain/lin64_le/bin:/cad1/Xilinx/SDK/2018.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin:/cad1/Xilinx/SDK/2018.1/gnu/aarch32/lin/gcc-arm-none-eabi/bin:/cad1/Xilinx/SDK/2018.1/gnu/aarch64/lin/aarch64-linux/bin:/cad1/Xilinx/SDK/2018.1/gnu/aarch64/lin/aarch64-none/bin:/cad1/Xilinx/SDK/2018.1/gnu/armr5/lin/gcc-arm-none-eabi/bin:/cad1/Xilinx/SDK/2018.1/tps/lnx64/cmake-3.3.2/bin:/cad1/Xilinx/DocNav:/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:.:/cad2/ece297s/public/bin
export LD_LIBRARY_PATH=/cad1/Xilinx/Vivado/2018.1/lnx64/tools/gdb_v7_2:/cad1/Xilinx/Vivado/2018.1/lnx64/tools/graphviz/lib:/cad1/Xilinx/Vivado/2018.1/lnx64/bin:/cad1/Xilinx/Vivado/2018.1/lib/lnx64.o/Default:/cad1/Xilinx/Vivado/2018.1/lib/lnx64.o:/cad1/Xilinx/Vivado/2018.1/tps/lnx64/jre/lib/amd64:/cad1/Xilinx/Vivado/2018.1/tps/lnx64/jre/lib/amd64/server:/cad1/Xilinx/Vivado/2018.1/bin/../lnx64/tools/dot/lib:/cad1/Xilinx/Vivado/2018.1/lnx64/tools/fpo_v6_1:/cad1/Xilinx/Vivado/2018.1/lnx64/tools/fpo_v7_0:/cad1/Xilinx/Vivado/2018.1/lnx64/tools/fft_v9_1:/cad1/Xilinx/Vivado/2018.1/lnx64/tools/opencv:/cad1/Xilinx/Vivado/2018.1/lnx64/tools/fir_v7_0:/cad1/Xilinx/Vivado/2018.1/lnx64/tools/dds_v6_0:/cad1/Xilinx/Vivado/2018.1/lnx64/lib/csim
export HDI_APPROOT=/cad1/Xilinx/Vivado/2018.1
export XILINX_OPENCL_CLANG=/cad1/Xilinx/Vivado/2018.1/lnx64/tools/clang
export RDI_PLATFORM=lnx64
bugpoint -mlimit=32000  --load libhls_support.so  --load libhls_bugpoint.so  -hls -strip  -function-uniquify -auto-function-inline -globaldce  -ptrArgReplace -mem2reg -instcombine -dce  -reset-lda  -loop-simplify -indvars -licm -loop-dep  -loop-bound -licm -loop-simplify -flattenloopnest  -array-flatten -gvn -instcombine -dce  -array-map -dce -func-legal  -gvn -adce -instcombine -cfgopt -simplifycfg -loop-simplify   -array-burst -promote-global-argument -dce  -axi4-lower -array-seg-normalize  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa -gvn -gvn  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa -dse -adse -adce -licm  -inst-simplify -dce  -globaldce -instcombine -array-stream -eliminate-keepreads -instcombine  -dce   -deadargelim -doublePtrSimplify  -doublePtrElim -dce -doublePtrSimplify -promote-dbg-pointer  -dce -scalarrepl -mem2reg -disaggr -norm-name -mem2reg  -instcombine  -dse -adse -adce -ptrLegalization -dce -auto-rom-infer -array-flatten -dce -instcombine -check-doubleptr  -loop-rot -constprop -cfgopt -simplifycfg -loop-simplify -indvars -pointer-simplify -dce -loop-bound  -loop-simplify -loop-preproc  -constprop -global-constprop -gvn -mem2reg -instcombine -dce  -loop-bound  -loop-merge -dce  -bitwidthmin  -deadargelim -dce  -canonicalize-dataflow -dce  -scalar-propagation -deadargelim -globaldce -mem2reg   -interface-preproc -directive-preproc -interface-gen  -bram-byte-enable  -deadargelim -inst-simplify -dce  -gvn -mem2reg -instcombine -dce -adse  -loop-bound  -instcombine -cfgopt -simplifycfg -loop-simplify  -clean-region -io-protocol  -find-region -mem2reg  -bitop-raise  -inst-simplify -inst-rectify -instcombine -adce -deadargelim  -loop-simplify -phi-opt -bitop-raise  -cfgopt -simplifycfg -strip-dead-prototypes  -interface-lower -bitop-lower -intrinsic-lower -auto-function-inline  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa  -inst-simplify -simplifycfg   -loop-simplify  -mergereturn -inst-simplify -inst-rectify  -dce -bitop-lower  -loop-rewind -pointer-simplify -dce -cfgopt  -read-loop-dep -dce -bitwidth -loop-dep -check-stream -norm-name -legalize  -validate-dataflow  /nfs/ug/thesis/thesis0/pc/Quinn/galapagos/hlsIP_adm-8k5/heartBeat/solution1/.autopilot/db/a.o.2.bc
llvm-dis bugpoint-reduced-simplified.bc 
