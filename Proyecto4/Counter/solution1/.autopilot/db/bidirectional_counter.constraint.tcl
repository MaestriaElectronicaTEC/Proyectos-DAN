set clock_constraint { \
    name clk \
    module bidirectional_counter::bidirectional_counter \
    port ap_clk \
    period 10 \
    uncertainty 1.25 \
}

set MultiClock_number 1

set MultiClock_constraint {  clock 10 }

set all_path {}

set false_path {}

