% multi-level 
area_rram_mux_nonisolate_multi_level = 2:2:50;
pn_ratio = 1;
prog_pn_ratio = 1;
pullup_trans_size = 1;
for i=1:1:length(area_rram_mux_nonisolate_multi_level)
  area_multiplexing = (2*i-1)* 3 * (2*trans_area(1)+ 2*trans_area(prog_pn_ratio));
  area_pullup_trans = 0*(trans_area(pullup_trans_size)+ trans_area(pullup_trans_size));

  area_buf = (2*i + 1) * (trans_area(1)+ trans_area(1*pn_ratio));

  area_rram_mux_nonisolate_multi_level(i) = area_multiplexing + area_buf + area_pullup_trans;
end
% Delay and power when VDD=0.5V 
rram_mux_nonisolate_multi_level_0p5V = [
2, 1.3385e-11,4.143e-09,1.5055e-06,3.9285e-17;
4, 1.851e-11,1.195e-08,1.4025e-06,4.4105e-17;
6, 2.3515e-11,2.218e-08,1.25975e-06,4.899e-17;
8, 2.3685e-11,2.655e-08,1.26535e-06,4.9015e-17;
10, 3.088e-11,4.27e-08,1.16145e-06,5.497e-17;
12, 3.0885e-11,4.768e-08,1.16455e-06,5.5115e-17;
14, 3.0885e-11,5.235e-08,1.16835e-06,5.528e-17;
16, 3.0885e-11,4.998e-08,1.1714e-06,5.5425e-17;
18, 3.766e-11,8.367e-08,1.10865e-06,6.163e-17;
20, 3.766e-11,1.285e-07,1.1117e-06,6.18e-17;
22, 3.766e-11,9.266e-08,1.1155e-06,6.2e-17;
24, 3.766e-11,7.677e-08,1.1186e-06,6.217e-17;
26, 3.766e-11,8.167e-08,1.1228e-06,6.241e-17;
28, 3.766e-11,1.07e-07,1.1259e-06,6.259e-17;
30, 3.766e-11,3.323e-07,1.1296e-06,6.278e-17;
32, 3.766e-11,9.891e-09,1.1327e-06,6.2955e-17;
34, 4.593e-11,1.525e-07,1.0962e-06,7.169e-17;
36, 4.5935e-11,1.562e-07,1.0993e-06,7.19e-17;
38, 4.593e-11,1.726e-07,1.1031e-06,7.2125e-17;
40, 4.5935e-11,1.732e-07,1.10615e-06,7.233e-17;
42, 4.5935e-11,1.787e-07,1.1104e-06,7.262e-17;
44, 4.5935e-11,1.787e-07,1.1104e-06,7.262e-17;
46, 4.5935e-11,1.787e-07,1.1104e-06,7.262e-17;
48, 4.5935e-11,1.787e-07,1.1104e-06,7.262e-17;
50, 4.5935e-11,1.787e-07,1.1104e-06,7.262e-17;
];

% Delay and power when VDD=0.6V 
rram_mux_nonisolate_multi_level_0p6V = [
2, 1.01435e-11,4.846e-09,2.766e-06,5.896e-17;
4, 1.405e-11,1.45e-08,2.489e-06,6.5255e-17;
6, 1.8925e-11,2.731e-08,2.2145e-06,7.1775e-17;
8, 1.8925e-11,3.237e-08,2.2195e-06,7.1915e-17;
10, 2.4955e-11,5.367e-08,2.034e-06,7.8855e-17;
12, 2.4955e-11,5.886e-08,2.0385e-06,7.899e-17;
14, 2.495e-11,6.442e-08,2.0425e-06,7.9185e-17;
16, 2.495e-11,6.928e-08,2.047e-06,7.937e-17;
18, 3.062e-11,1.044e-07,1.9055e-06,8.835e-17;
20, 3.0615e-11,1.432e-07,1.9095e-06,8.855e-17;
22, 3.062e-11,1.151e-07,1.914e-06,8.8765e-17;
24, 3.062e-11,1.606e-07,1.918e-06,8.8915e-17;
26, 3.062e-11,1.272e-07,1.924e-06,8.921e-17;
28, 3.062e-11,1.794e-07,1.928e-06,8.941e-17;
30, 3.062e-11,1.368e-07,1.9325e-06,8.962e-17;
32, 3.0615e-11,1.968e-07,1.937e-06,8.982e-17;
34, 3.823e-11,2.034e-07,1.838e-06,9.943e-17;
36, 3.823e-11,2.085e-07,1.842e-06,9.9695e-17;
38, 3.823e-11,2.136e-07,1.8465e-06,9.9925e-17;
40, 3.823e-11,2.199e-07,1.851e-06,1.0014e-16;
42, 3.823e-11,2.24e-07,1.8565e-06,1.00455e-16;
44, 3.823e-11,2.24e-07,1.8565e-06,1.00455e-16;
46, 3.823e-11,2.24e-07,1.8565e-06,1.00455e-16;
48, 3.823e-11,2.24e-07,1.8565e-06,1.00455e-16;
50, 3.823e-11,2.24e-07,1.8565e-06,1.00455e-16;
];

% Delay and power when VDD=0.7V 
rram_mux_nonisolate_multi_level_0p7V = [
2, 8.516e-12,5.971e-09,4.3885e-06,8.398e-17;
4, 1.2145e-11,1.78e-08,3.938e-06,9.1795e-17;
6, 1.6525e-11,3.382e-08,3.492e-06,9.9925e-17;
8, 1.6525e-11,3.994e-08,3.497e-06,1.0006e-16;
10, 2.187e-11,6.677e-08,3.163e-06,1.11195e-16;
12, 2.187e-11,7.298e-08,3.168e-06,1.11395e-16;
14, 2.187e-11,7.969e-08,3.1735e-06,1.1161e-16;
16, 2.187e-11,8.581e-08,3.1795e-06,1.11805e-16;
18, 2.7935e-11,1.291e-07,2.9875e-06,1.2369e-16;
20, 2.7935e-11,1.369e-07,2.993e-06,1.23905e-16;
22, 2.7935e-11,1.424e-07,2.999e-06,1.2414e-16;
24, 2.7935e-11,1.502e-07,3.004e-06,1.24345e-16;
26, 2.7935e-11,1.41e-07,3.0115e-06,1.2467e-16;
28, 2.7935e-11,1.8e-07,3.0165e-06,1.2493e-16;
30, 2.793e-11,1.702e-07,3.0235e-06,1.2515e-16;
32, 2.793e-11,1.759e-07,3.0285e-06,1.25355e-16;
34, 3.434e-11,2.521e-07,2.842e-06,1.39795e-16;
36, 3.434e-11,2.585e-07,2.8475e-06,1.40085e-16;
38, 3.434e-11,2.653e-07,2.8535e-06,1.40345e-16;
40, 3.4335e-11,2.714e-07,2.859e-06,1.4063e-16;
42, 3.434e-11,2.798e-07,2.866e-06,1.4098e-16;
44, 3.434e-11,2.798e-07,2.866e-06,1.4098e-16;
46, 3.434e-11,2.798e-07,2.866e-06,1.4098e-16;
48, 3.434e-11,2.798e-07,2.866e-06,1.4098e-16;
50, 3.434e-11,2.798e-07,2.866e-06,1.4098e-16;
];