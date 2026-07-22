ecoAddRepeater -cell BUFX2 -net n_17 -name FE_ECOC0_n_17
ecoAddRepeater -cell BUFX2 -net n_17 -name FE_ECOC1_n_17
ecoAddRepeater -cell BUFX3 -net n_17 -name FE_ECOC2_n_17
ecoChangeCell -inst FE_ECOC1_n_17 -cell BUFX3
ecoDeleteRepeater -inst FE_ECOC0_n_17 
ecoAddRepeater -cell BUFX4 -net n_17 -name FE_ECOC3_n_17
ecoDeleteRepeater -inst FE_ECOC3_n_17 
ecoDeleteRepeater -inst FE_ECOC2_n_17 
ecoChangeCell -inst FE_ECOC1_n_17 -cell BUFX2
ecoAddRepeater -cell BUFX2 -net n_17 -name FE_ECOC4_n_17
ecoAddRepeater -cell BUFX2 -net n_17 -name FE_ECOC5_n_17
ecoAddRepeater -cell BUFX2 -net n_17 -name FE_ECOC6_n_17
ecoAddRepeater -cell BUFX2 -net n_17 -name FE_ECOC7_n_17
ecoAddRepeater -cell BUFX2 -net n_9 -name FE_ECOC8_n_9
ecoAddRepeater -cell BUFX2 -net n_9 -name FE_ECOC9_n_9
ecoAddRepeater -cell BUFX2 -net n_15 -name FE_ECOC10_n_15
ecoAddRepeater -cell BUFX2 -net n_15 -name FE_ECOC11_n_15
ecoAddRepeater -cell BUFX2 -net n_15 -name FE_ECOC12_n_15
ecoAddRepeater -cell BUFX2 -net n_13 -name FE_ECOC13_n_13
ecoAddRepeater -cell {BUFX2 BUFX3} -net n_13 -name FE_ECOC14_n_13
ecoAddRepeater -cell BUFX2 -net n_16 -name FE_ECOC16_n_16
ecoAddRepeater -cell BUFX2 -net FE_ECON16_n_16 -name FE_ECOC17_n_16
ecoAddRepeater -cell BUFX2 -net n_11 -name FE_ECOC18_n_11
ecoAddRepeater -cell BUFX2 -net n_11 -name FE_ECOC19_n_11
ecoAddRepeater -cell BUFX2 -net FE_ECON18_n_11 -name FE_ECOC20_n_11
