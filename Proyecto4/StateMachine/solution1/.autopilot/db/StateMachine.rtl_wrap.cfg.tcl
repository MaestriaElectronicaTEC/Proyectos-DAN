set language "SC"
set moduleName "StateMachine"
set portName0 "clock"
set isMeta0 0
set portInterface0 [list "sc_in_clk"]
set portData0 ""
set isClock0 1
set isReset0 0
set portAttribute0 [list $isClock0 $isReset0]
set port0 [list $portName0 $isMeta0 $portInterface0 $portData0 $portAttribute0]
lappend portList $port0
set portName1 "key"
set isMeta1 0
set portInterface1 [list "sc_in"]
set portData1 [list "char"]
set isClock1 0
set isReset1 0
set portAttribute1 [list $isClock1 $isReset1]
set port1 [list $portName1 $isMeta1 $portInterface1 $portData1 $portAttribute1]
lappend portList $port1
set portName2 "current_state"
set isMeta2 0
set portInterface2 [list "sc_out"]
set portData2 [list "sc_int" 12]
set isClock2 0
set isReset2 0
set portAttribute2 [list $isClock2 $isReset2]
set port2 [list $portName2 $isMeta2 $portInterface2 $portData2 $portAttribute2]
lappend portList $port2
set module [list $moduleName $portList]
