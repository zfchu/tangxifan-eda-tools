% two-level 
area_rram_mux_nonisolate_two_level = 2:2:32;
pn_ratio = 1.9;
prog_pn_ratio = 3;
pullup_trans_size = 1;
for i=1:1:length(area_rram_mux_nonisolate_two_level)
  area_multiplexing = (2*i+1)*(2*trans_area(1)+ 2*trans_area(prog_pn_ratio))+(ceil(2*i))*(2*trans_area(1)+ 2*trans_area(prog_pn_ratio));
  area_pullup_trans = (trans_area(pullup_trans_size)+ trans_area(pullup_trans_size));

  area_buf = (2*i + 1) * (trans_area(1)+ trans_area(1*pn_ratio));

  area_rram_mux_nonisolate_two_level(i) = area_multiplexing + area_buf + area_pullup_trans;
end
% Delay and power when VDD=0.7V 
rram_mux_nonisolate_two_level_0p7V = [
2, 3.0565e-11,1.574e-08,1.87095e-05,8.0005e-16;
4, 4.589e-11,3.237e-08,1.85425e-05,9.581e-16;
6, 4.55e-11,4.675e-08,1.87475e-05,9.706e-16;
8, 4.5435e-11,5.714e-08,1.86355e-05,9.756e-16;
10, 4.5485e-11,7.064e-08,1.8833e-05,9.762e-16;
12, 4.549e-11,8.097e-08,1.88525e-05,9.767e-16;
14, 4.5485e-11,9.138e-08,1.88245e-05,9.7585e-16;
16, 4.5485e-11,1.017e-07,1.8869e-05,9.7755e-16;
18, 4.541e-11,1.15e-07,1.87165e-05,9.8255e-16;
20, 4.541e-11,1.253e-07,1.8743e-05,9.8395e-16;
22, 4.5375e-11,1.357e-07,1.9058e-05,1.0053e-15;
24, 4.52e-11,1.466e-07,1.92315e-05,1.0052e-15;
26, 4.5235e-11,1.595e-07,1.92245e-05,1.00585e-15;
28, 4.5255e-11,1.7e-07,1.92275e-05,1.00655e-15;
30, 4.526e-11,1.804e-07,1.92495e-05,1.00785e-15;
32, 4.5215e-11,1.905e-07,1.9286e-05,1.00625e-15;
];

% Delay and power when VDD=0.8V 
rram_mux_nonisolate_two_level_0p8V = [
2, 2.352e-11,2.252e-08,2.905e-05,1.1247e-15;
4, 3.6e-11,4.463e-08,2.89715e-05,1.2899e-15;
6, 3.594e-11,6.265e-08,2.9389e-05,1.3106e-15;
8, 3.5995e-11,7.771e-08,2.90305e-05,1.29245e-15;
10, 3.599e-11,9.547e-08,2.90225e-05,1.29225e-15;
12, 3.599e-11,1.098e-07,2.9064e-05,1.29375e-15;
14, 3.599e-11,1.255e-07,2.9168e-05,1.2986e-15;
16, 3.5985e-11,1.399e-07,2.9186e-05,1.29895e-15;
18, 3.5985e-11,1.581e-07,2.92255e-05,1.30085e-15;
20, 3.5985e-11,1.726e-07,2.92875e-05,1.30405e-15;
22, 3.5695e-11,1.884e-07,2.9774e-05,1.3264e-15;
24, 3.584e-11,2.035e-07,2.9094e-05,1.293e-15;
26, 3.5975e-11,2.211e-07,2.9404e-05,1.30895e-15;
28, 3.582e-11,2.361e-07,2.9478e-05,1.31335e-15;
30, 3.5785e-11,2.504e-07,2.9458e-05,1.31105e-15;
32, 3.598e-11,2.668e-07,2.9403e-05,1.3059e-15;
];

% Delay and power when VDD=0.9V 
rram_mux_nonisolate_two_level_0p9V = [
2, 1.938e-11,3.254e-08,4.3435e-05,1.6065e-15;
4, 3.035e-11,6.081e-08,4.1495e-05,1.71175e-15;
6, 3.032e-11,8.678e-08,4.168e-05,1.7247e-15;
8, 3.0505e-11,1.072e-07,4.137e-05,1.71805e-15;
10, 3.0495e-11,1.321e-07,4.1355e-05,1.71785e-15;
12, 3.0495e-11,1.522e-07,4.139e-05,1.71965e-15;
14, 3.0505e-11,1.704e-07,4.1215e-05,1.7104e-15;
16, 3.0435e-11,1.903e-07,4.1395e-05,1.68565e-15;
18, 3.029e-11,2.152e-07,4.134e-05,1.7203e-15;
20, 3.0405e-11,2.35e-07,4.241e-05,1.76615e-15;
22, 3.037e-11,2.563e-07,4.243e-05,1.74415e-15;
24, 3.0345e-11,2.786e-07,4.138e-05,1.71555e-15;
26, 3.059e-11,3.018e-07,4.0965e-05,1.6987e-15;
28, 3.0485e-11,3.237e-07,4.1455e-05,1.72215e-15;
30, 3.048e-11,3.437e-07,4.147e-05,1.7226e-15;
32, 3.0335e-11,3.648e-07,4.141e-05,1.71925e-15;
];