% one-level 
area_rram_mux_nonisolate_one_level = 2:2:50;
pn_ratio = 1;
prog_pn_ratio = 1;
pullup_trans_size = 0;
for i=1:1:length(area_rram_mux_nonisolate_one_level)
  area_multiplexing = (2*i+1)*(trans_area(1)+ trans_area(prog_pn_ratio));
  area_pullup_trans = 0*(trans_area(pullup_trans_size)+ trans_area(pullup_trans_size));

  area_buf = (2*i + 1) * (trans_area(1)+ trans_area(1*pn_ratio));

  area_rram_mux_nonisolate_one_level(i) = area_multiplexing + area_buf + area_pullup_trans;
end

% Delay and power when VDD=0.5V 
rram_mux_nonisolate_one_level_0p5V = [ % size, delay, leakage, dynamic_power, energy_per_toggle
2, 1.3385e-11,4.143e-09,1.5055e-06,3.9285e-17;
4, 1.394e-11,7.421e-09,1.551e-06,4.041e-17;
6, 1.437e-11,1.063e-08,1.546e-06,4.185e-17;
8, 1.478e-11,1.384e-08,1.556e-06,4.3235e-17;
10, 1.5165e-11,1.713e-08,1.5705e-06,4.4515e-17;
12, 1.5525e-11,2.036e-08,1.583e-06,4.583e-17;
14, 1.597e-11,2.361e-08,1.5965e-06,4.713e-17;
16, 1.641e-11,2.726e-08,1.612e-06,4.8415e-17;
18, 1.6835e-11,3.054e-08,1.6285e-06,4.973e-17;
20, 1.739e-11,3.317e-08,1.6425e-06,5.0945e-17;
22, 1.8055e-11,3.638e-08,1.6585e-06,5.223e-17;
24, 1.858e-11,3.96e-08,1.6715e-06,5.3515e-17;
26, 1.898e-11,4.281e-08,1.689e-06,5.4745e-17;
28, 1.931e-11,4.61e-08,1.7035e-06,5.601e-17;
30, 1.9605e-11,4.93e-08,1.747e-06,5.7275e-17;
32, 1.988e-11,5.244e-08,1.766e-06,5.8755e-17;
34, 2.001e-11,5.565e-08,1.7555e-06,5.987e-17;
36, 2.043e-11,5.885e-08,1.7785e-06,6.128e-17;
38, 2.0715e-11,6.205e-08,1.7725e-06,6.2545e-17;
40, 2.1145e-11,6.525e-08,1.783e-06,6.3725e-17;
42, 2.1385e-11,6.844e-08,1.7925e-06,6.5075e-17;
44, 2.1625e-11,7.173e-08,1.8155e-06,6.6135e-17;
46, 2.188e-11,7.496e-08,1.8295e-06,6.7025e-17;
48, 2.2145e-11,7.817e-08,1.834e-06,6.884e-17;
50, 2.3115e-11,8.138e-08,1.8435e-06,7.016e-17;
];

% Delay and power when VDD=0.6V 
rram_mux_nonisolate_one_level_0p6V = [ % size, delay, leakage, dynamic_power, energy_per_toggle
2, 1.01435e-11,4.846e-09,2.766e-06,5.896e-17;
4, 1.039e-11,8.48e-09,2.799e-06,6.0545e-17;
6, 1.072e-11,1.209e-08,2.858e-06,6.221e-17;
8, 1.0975e-11,1.57e-08,2.862e-06,6.3985e-17;
10, 1.124e-11,1.933e-08,2.8605e-06,6.577e-17;
12, 1.143e-11,2.29e-08,2.9015e-06,6.7805e-17;
14, 1.175e-11,2.649e-08,2.9255e-06,6.958e-17;
16, 1.2095e-11,3.008e-08,2.951e-06,7.13e-17;
18, 1.2735e-11,3.367e-08,2.992e-06,7.3275e-17;
20, 1.294e-11,3.726e-08,3.0095e-06,7.466e-17;
22, 1.34e-11,4.084e-08,3.0505e-06,7.618e-17;
24, 1.3625e-11,4.442e-08,3.0785e-06,7.7725e-17;
26, 1.3915e-11,4.8e-08,3.112e-06,7.9535e-17;
28, 1.3965e-11,5.157e-08,3.113e-06,8.125e-17;
30, 1.427e-11,5.515e-08,3.14e-06,8.281e-17;
32, 1.4565e-11,5.872e-08,3.1655e-06,8.4375e-17;
34, 1.4705e-11,6.229e-08,3.1885e-06,8.662e-17;
36, 1.5135e-11,6.586e-08,3.2205e-06,8.77e-17;
38, 1.539e-11,6.943e-08,3.2405e-06,8.946e-17;
40, 1.532e-11,7.299e-08,3.2145e-06,9.258e-17;
42, 1.5535e-11,7.656e-08,3.2465e-06,9.4555e-17;
44, 1.595e-11,8.093e-08,3.2915e-06,9.509e-17;
46, 1.613e-11,8.368e-08,3.306e-06,9.673e-17;
48, 1.635e-11,8.724e-08,3.3055e-06,9.84e-17;
50, 1.6495e-11,9.079e-08,3.3405e-06,1.0006e-16;
];

% Delay and power when VDD=0.7V 
rram_mux_nonisolate_one_level_0p7V = [ % size, delay, leakage, dynamic_power, energy_per_toggle
2, 8.516e-12,5.971e-09,4.3885e-06,8.398e-17;
4, 8.801e-12,1.029e-08,4.438e-06,8.6155e-17;
6, 9.1095e-12,1.454e-08,4.4895e-06,8.849e-17;
8, 9.3965e-12,1.879e-08,4.553e-06,9.068e-17;
10, 9.665e-12,2.313e-08,4.5955e-06,9.288e-17;
12, 9.915e-12,2.731e-08,4.6335e-06,9.498e-17;
14, 1.0145e-11,3.157e-08,4.6815e-06,9.7225e-17;
16, 1.0365e-11,3.583e-08,4.6845e-06,9.919e-17;
18, 1.056e-11,4.026e-08,4.7265e-06,1.01255e-16;
20, 1.074e-11,4.454e-08,4.7605e-06,1.03375e-16;
22, 1.0805e-11,4.862e-08,4.7965e-06,1.0705e-16;
24, 1.1005e-11,5.288e-08,4.844e-06,1.0926e-16;
26, 1.1275e-11,5.745e-08,4.8585e-06,1.1157e-16;
28, 1.154e-11,6.141e-08,4.894e-06,1.13715e-16;
30, 1.182e-11,6.567e-08,4.945e-06,1.15215e-16;
32, 1.208e-11,6.994e-08,4.9875e-06,1.1738e-16;
34, 1.236e-11,7.421e-08,5.013e-06,1.1954e-16;
36, 1.26e-11,7.848e-08,5.0675e-06,1.2149e-16;
38, 1.2845e-11,8.275e-08,5.14e-06,1.24075e-16;
40, 1.307e-11,8.701e-08,5.1725e-06,1.2592e-16;
42, 1.3135e-11,9.128e-08,5.1885e-06,1.2766e-16;
44, 1.334e-11,9.555e-08,5.239e-06,1.30015e-16;
46, 1.3535e-11,9.982e-08,5.2455e-06,1.31825e-16;
48, 1.373e-11,1.041e-07,5.272e-06,1.33895e-16;
50, 1.393e-11,1.084e-07,5.298e-06,1.35865e-16;
];