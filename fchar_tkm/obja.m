%������ � ������ ��� � ���
function WWW=obja(p),
time=46;
clc;

  %    t                     c1            c2             c3           k1            k2            k3
  %        t                -app       -atpz         -apd       -atzz        -azp         -azd                                                                    
  a=[ 10.0000   -0.1529   -0.0016   7.5738    0.0034   19.2483   26.8045
   10.7000   -0.1495   -0.0016    7.5809    0.0034   19.3202   26.9142
   12.0000   -0.1480   -0.0016    7.5951    0.0034   19.4668   27.1230
   14.0000   -0.1607   -0.0017    7.6285    0.0036   19.7319   27.4595
   16.0000   -0.1921   -0.0018    7.6650    0.0039   20.0462   27.8146
   18.0000   -0.2416   -0.0020    7.7055    0.0044   20.4093   28.1891
   20.0000   -0.3099   -0.0023    7.7586    0.0050   20.8230   28.5830
   22.0000   -0.3941   -0.0025    7.8054    0.0056   21.2805   28.9969
   24.0000   -0.4929   -0.0028    7.8645    0.0063   21.7799   29.4306
   26.0000   -0.6080   -0.0030    7.9165    0.0069   22.3167   29.8834
   28.0000   -0.7340   -0.0033    7.9826    0.0075   22.8740   30.3548
   30.0000   -0.8761   -0.0035    8.0515    0.0081   23.4457   30.8446
   32.0000   -1.0483   -0.0038    8.1242    0.0086   24.0342   31.3517
   34.0000   -1.2579   -0.0041    8.2091    0.0092   24.6463   31.8754
   36.0000   -1.4993   -0.0045    8.2952    0.0097   25.2859   32.4148
   38.0000   -1.7574   -0.0048    8.3820    0.0101   25.9236   32.9685
   39.9000   -1.8804   -0.0049    8.4233    0.0103   26.3392   33.2772
   40.0000   -1.9747   -0.0050    8.4693    0.0105   26.7115   33.5369
   42.0000   -2.1828   -0.0051    8.5567    0.0108   27.5518   34.1189
   44.0000   -2.3675   -0.0052    8.6340    0.0111   28.4079   34.7146
   44.0900   -2.3721   -0.0051    8.6467    0.0111   28.4478   34.7423
   46.0000   -2.5158   -0.0051    8.7211    0.0113   29.3136   35.3231
   48.0000   -2.6337   -0.0050    8.8424    0.0114   30.2050   35.9460
   49.0900   -2.6746   -0.0049    8.9141    0.0114   30.6585   36.2921
   50.0000   -2.7021   -0.0048    8.9687    0.0113   31.0337   36.5829
   52.0000   -2.7400   -0.0046    9.0957    0.0111   31.8050   37.2346
   54.0000   -2.7456   -0.0043    9.2230    0.0108   32.4605   37.9013
   56.0000   -2.7240   -0.0040    9.3508    0.0103   33.0814   38.5833
   58.0000   -2.6785   -0.0037    9.4790    0.0098   33.6652   39.2825
   60.0000   -2.6110   -0.0034    9.6076    0.0093   34.2132   39.9991
   62.0000   -2.5207   -0.0031    9.7366    0.0087   34.7263   40.7342
   64.0000   -2.4111   -0.0028    9.8662    0.0082   35.2051   41.4884
   66.0000   -2.2896   -0.0026    9.9962    0.0076   35.6497   42.2643
   68.0000   -2.1451   -0.0023   10.1976    0.0069   35.9785   43.0623
   70.0000   -1.9912   -0.0020   10.4262    0.0062   36.2844   43.8839
   72.0000   -1.8358   -0.0018   10.6593    0.0056   36.5899   44.7311
   74.0000   -1.6831   -0.0015   10.8970    0.0050   36.9106   45.6047
   76.0000   -1.5356   -0.0013   11.1396    0.0044   37.2492   46.5088
   78.0000   -1.3920   -0.0012   11.3873    0.0039   37.6067   47.4444
   80.0000   -1.2597   -0.0010   11.6284    0.0035   37.9925   48.4143
   82.0000   -1.1352   -0.0009   11.8871    0.0030   38.4063   49.4198
   84.0000   -1.0171   -0.0007   12.1518    0.0027   38.8593   50.4656
   86.0000   -0.9075   -0.0006   12.4228    0.0023   39.3523   51.5537
   88.0000   -0.8108   -0.0005   12.8617    0.0020   39.8983   52.6874
   90.0000   -0.7209   -0.0005   13.3669    0.0018   40.4857   53.8694
   92.0000   -0.6400   -0.0004   13.8966    0.0015   41.1295   55.1031
   94.0000   -0.5631   -0.0003   14.4663    0.0013   41.8163   56.3936
   96.0000   -0.4964   -0.0003   15.0511    0.0011   42.5702   57.7446
   98.0000   -0.4341   -0.0002   15.6668    0.0010   43.3807   59.1608
  100.0000   -0.3850   -0.0002   16.3158    0.0008   44.2824   60.6473
  102.0000   -0.3394   -0.0002   17.0009    0.0007   45.2434   62.2079
  102.5900   -0.3278   -0.0002   17.2191    0.0007   45.5387   62.6833
  104.0000   -0.2996   -0.0001   17.4431    0.0006   45.4256   62.6648
  106.0000   -0.2629   -0.0001   18.0194    0.0005   45.2726   62.6398
  108.0000   -0.2317   -0.0001   18.6746    0.0004   45.1362   62.6156
  110.0000   -0.2050   -0.0001   19.3648    0.0004   45.0189   62.5955
  112.0000   -0.1813   -0.0001   20.2536    0.0003   44.9095   62.5754
  114.0000   -0.1581   -0.0001   21.3092    0.0003   44.8035   62.5564
  116.0000   -0.1372   -0.0001   22.4380    0.0002   44.7075   62.5389
  116.2700   -0.1343   -0.0001   22.5258    0.0002   44.6946   62.5359];

app=-interp1(a(:,1),a(:,2),time);app_int=-a(:,2);
  atpz=-interp1(a(:,1),a(:,3),time);atpz_int=-a(:,3);
  apd=-interp1(a(:,1),a(:,4),time);apd_int=-a(:,4);
  atzz=-interp1(a(:,1),a(:,5),time);atzz_int=-a(:,5);
  azp=-interp1(a(:,1),a(:,6),time);azp_int=-a(:,6);
  azd=-interp1(a(:,1),a(:,7),time);azd_int=-a(:,7);
 
apdtt=[-1.068 -1.0707 -1.1013 -1.1605 -1.3456 -1.5669 -2.0949 -2.6111 -3.2235].*0.01;attpd_int=apdtt;
td=[0 18 30 46 66 86 102 110 116.36];
attpd=interp1(td,apdtt,time);

%oscillyatory
  %[ttg vg wg tg        rg        hg       sg      mg] 35x29   
%(1 2-5 6-9 10-13 14-17 18-21 22-25 26-29)
%            t                   w2b1                   w2b2            w2b3                w2b4                -attzb1            -attzb2                  -attzb3                -attzb4         -attpb1            -attpb2           -attpb3                                                                                                                                                                                                             
AA=[1.0000e+001  3.2700e+001  3.1500e+001  5.9200e+001  4.5000e+001  1.4900e-002  2.8600e-002  2.2000e-003  7.4000e-003  3.6000e-003  1.5000e-003 -4.0000e-004
  1.4000e+001  3.3500e+001  3.2300e+001  6.0700e+001  4.6100e+001  1.5200e-002  2.9200e-002  2.2000e-003  7.5000e-003  3.6000e-003  1.5000e-003 -4.0000e-004
  1.8000e+001  3.4300e+001  3.3100e+001  6.2200e+001  4.7300e+001  1.5600e-002  3.0000e-002  2.3000e-003  7.7000e-003  3.6000e-003  1.5000e-003 -4.0000e-004
  2.0000e+001  3.4800e+001  3.3500e+001  6.3000e+001  4.7900e+001  1.5800e-002  3.0300e-002  2.3000e-003  7.8000e-003  3.6000e-003  1.5000e-003 -4.0000e-004
  2.2000e+001  3.5200e+001  2.3500e+001  6.3900e+001  4.8500e+001  1.6000e-002  6.6600e-002  2.3000e-003  7.9000e-003  3.7000e-003  3.6000e-003 -4.0000e-004
  2.6000e+001  3.6100e+001  2.4100e+001  6.5500e+001  4.9800e+001  1.6400e-002  6.8300e-002  2.4000e-003  8.1000e-003  3.7000e-003  3.8000e-003 -4.0000e-004
  3.0000e+001  3.7000e+001  2.4600e+001  6.7000e+001  5.0900e+001  1.6900e-002  7.0100e-002  2.4000e-003  8.4000e-003  3.7000e-003  4.2000e-003 -4.0000e-004
  3.2000e+001  3.7300e+001  2.4900e+001  6.7700e+001  5.1400e+001  1.7100e-002  7.1100e-002  2.5000e-003  8.5000e-003  3.8000e-003  4.4000e-003 -4.0000e-004
  3.4000e+001  2.8000e+001  2.5100e+001  6.8300e+001  5.1900e+001  3.7300e-002  7.2100e-002  2.5000e-003  8.6000e-003  8.1000e-003  4.7000e-003 -4.0000e-004
  3.8000e+001  2.3700e+001  2.5600e+001  6.9600e+001  5.2900e+001  5.3000e-002  7.4100e-002  2.6000e-003  8.8000e-003  1.1500e-002  5.2000e-003 -4.0000e-004
  4.2000e+001  2.4300e+001  2.6400e+001  7.1800e+001  5.4600e+001  5.4600e-002  7.6200e-002  2.7000e-003  9.1000e-003  1.1800e-002  5.8000e-003 -4.0000e-004
  4.6000e+001  2.5300e+001  2.7300e+001  7.4300e+001  5.6400e+001  5.6100e-002  7.8500e-002  2.7000e-003  9.4000e-003  1.1900e-002  6.4000e-003 -4.0000e-004
  4.8000e+001  2.5700e+001  2.7800e+001  7.5700e+001  5.7500e+001  5.7000e-002  7.9700e-002  2.8000e-003  9.5000e-003  1.2000e-002  6.7000e-003 -4.0000e-004
  5.0000e+001  2.6000e+001  2.8300e+001  7.7100e+001  5.8600e+001  5.7900e-002  8.0900e-002  2.8000e-003  9.6000e-003  1.2200e-002  7.0000e-003 -4.0000e-004
  5.4000e+001  2.6700e+001  2.9300e+001  8.0100e+001  6.0800e+001  5.9700e-002  8.3500e-002  2.9000e-003  9.9000e-003  1.2600e-002  7.7000e-003 -4.0000e-004
  5.8000e+001  2.7400e+001  3.0500e+001  8.3200e+001  6.3200e+001  6.1700e-002  8.6300e-002  3.0000e-003  1.0300e-002  1.3000e-002  8.3000e-003 -4.0000e-004
  6.2000e+001  2.8000e+001  3.1700e+001  8.6700e+001  6.5800e+001  6.3800e-002  8.9200e-002  3.1000e-003  1.0600e-002  1.3400e-002  9.1000e-003 -4.0000e-004
  6.6000e+001  2.8600e+001  3.2900e+001  9.0400e+001  6.8700e+001  6.6100e-002  9.2300e-002  3.2000e-003  1.1000e-002  1.3900e-002  9.8000e-003 -4.0000e-004
  7.0000e+001  2.9100e+001  3.4200e+001  9.4400e+001  7.1700e+001  6.8500e-002  9.5700e-002  3.3000e-003  1.1400e-002  1.4400e-002  1.0700e-002 -4.0000e-004
  7.4000e+001  2.9300e+001  3.5400e+001  9.8500e+001  7.4800e+001  7.1200e-002  9.9300e-002  3.5000e-003  1.1800e-002  1.5100e-002  1.1600e-002 -3.0000e-004
  7.8000e+001  2.9400e+001  3.6600e+001  1.0300e+002  7.8200e+001  7.4000e-002  1.0320e-001  3.6000e-003  1.2300e-002  1.5800e-002  1.2700e-002 -3.0000e-004
  8.0000e+001  2.9000e+001  3.7100e+001  1.0530e+002  8.0000e+001  7.5300e-002  1.0530e-001  3.7000e-003  1.2500e-002  1.6200e-002  1.3200e-002 -3.0000e-004
  8.2000e+001  2.9000e+001  3.7500e+001  1.0770e+002  8.1800e+001  7.7100e-002  1.0740e-001  3.7000e-003  1.2800e-002  1.6700e-002  1.3800e-002 -3.0000e-004
  8.6000e+001  2.8300e+001  3.8200e+001  1.1270e+002  8.5600e+001  8.0600e-002  1.1200e-001  3.9000e-003  1.3300e-002  1.7700e-002  1.5000e-002 -3.0000e-004
  9.0000e+001  2.7200e+001  3.8300e+001  1.1810e+002  8.9700e+001  8.4500e-002  1.1700e-001  4.1000e-003  1.3900e-002  1.9000e-002  1.6500e-002 -3.0000e-004
  9.4000e+001  2.5400e+001  3.7600e+001  1.2390e+002  9.4100e+001  8.8700e-002  1.2260e-001  4.3000e-003  1.4600e-002  2.0600e-002  1.8300e-002 -3.0000e-004
  9.8000e+001  2.2800e+001  3.5600e+001  1.3020e+002  9.8900e+001  9.3500e-002  1.2870e-001  4.5000e-003  1.5300e-002  2.2500e-002  2.0400e-002 -3.0000e-004
  1.0000e+002  2.2700e+001  3.4000e+001  1.3360e+002  1.0140e+002  8.8500e-002  1.3210e-001  4.6000e-003  1.5700e-002  2.1800e-002  2.1600e-002 -3.0000e-004
  1.0260e+002  2.4800e+001  3.1200e+001  1.3820e+002  1.0500e+002  7.4500e-002  1.3680e-001  4.7000e-003  1.6200e-002  1.9000e-002  2.3400e-002 -3.0000e-004
  1.0400e+002  2.5000e+001  2.9000e+001  1.3820e+002  1.0500e+002  6.7400e-002  1.3940e-001  4.8000e-003  1.6500e-002  1.7500e-002  2.4400e-002 -2.0000e-004
  1.0800e+002  2.7000e+001  2.1500e+001  1.3820e+002  1.0500e+002  4.6800e-002  1.4760e-001  5.1000e-003  1.7400e-002  1.3100e-002  2.8300e-002 -2.0000e-004
  1.1200e+002  2.9900e+001  1.9600e+001  1.3820e+002  1.0500e+002  2.5900e-002  9.0400e-002  5.3000e-003  1.8300e-002  8.0000e-003  1.9300e-002 -2.0000e-004
  1.1630e+002  3.1900e+001  1.8700e+001  1.3820e+002  1.0500e+002  4.6000e-003  8.9000e-003  5.6000e-003  1.9400e-002  1.6000e-003  2.2000e-003 -1.0000e-004
  1.2056e+002  3.1900e+001  1.8700e+001  1.3820e+002  1.0500e+002  4.6000e-003  8.9000e-003  5.6000e-003  1.9400e-002  1.6000e-003  2.2000e-002 -1.0000e-004];
%                -attpb4               -apb1             -apb2               -apb3              -apb4                -attbz1               -attbz2            -attbz3              -attbz4              -attbp1             -attbp2           -attbp3                                                                                                                   
AA=[AA [-2.0000e-003  1.0000e-002  1.9000e-002  1.0000e-003  5.0000e-003  1.7260e+000  1.6650e+000  3.1310e+000  2.3780e+000  1.1736e+001  2.4050e+000 -1.6046e+001
                 -2.0000e-003  1.0000e-002  2.0000e-002  1.0000e-003  5.0000e-003  1.7260e+000  1.6650e+000  3.1310e+000  2.3780e+000  1.1754e+001  2.4220e+000 -1.6013e+001
                 -2.0000e-003  1.1000e-002  2.0000e-002  2.0000e-003  5.0000e-003  1.7260e+000  1.6650e+000  3.1310e+000  2.3780e+000  1.1790e+001  2.4560e+000 -1.5949e+001
                 -2.0000e-003  1.1000e-002  2.1000e-002  2.0000e-003  5.0000e-003  1.7260e+000  1.6650e+000  3.1310e+000  2.3780e+000  1.1813e+001  2.4790e+000 -1.5907e+001
                 -2.0000e-003  1.1000e-002  4.5000e-002  2.0000e-003  5.0000e-003  1.7260e+000  1.1510e+000  3.1310e+000  2.3780e+000  1.1837e+001  1.8460e+000 -1.5863e+001
                 -2.0000e-003  1.1000e-002  4.7000e-002  2.0000e-003  6.0000e-003  1.7260e+000  1.1510e+000  3.1310e+000  2.3780e+000  1.1891e+001  1.9500e+000 -1.5764e+001
                 -2.0000e-003  1.2000e-002  4.8000e-002  2.0000e-003  6.0000e-003  1.7260e+000  1.1500e+000  3.1310e+000  2.3780e+000  1.1957e+001  2.1380e+000 -1.5644e+001
                 -2.0000e-003  1.2000e-002  4.9000e-002  2.0000e-003  6.0000e-003  1.7260e+000  1.1500e+000  3.1310e+000  2.3780e+000  1.1995e+001  2.2620e+000 -1.5576e+001
                 -2.0000e-003  2.6000e-002  4.9000e-002  2.0000e-003  6.0000e-003  1.2850e+000  1.1500e+000  3.1310e+000  2.3780e+000  8.9590e+000  2.3900e+000 -1.5502e+001
                 -2.0000e-003  3.6000e-002  5.0000e-002  2.0000e-003  6.0000e-003  1.0650e+000  1.1500e+000  3.1310e+000  2.3780e+000  7.5750e+000  2.6510e+000 -1.5339e+001
                 -2.0000e-003  3.7000e-002  5.2000e-002  2.0000e-003  6.0000e-003  1.0590e+000  1.1500e+000  3.1310e+000  2.3780e+000  7.6390e+000  2.9170e+000 -1.5153e+001
                 -2.0000e-003  3.9000e-002  5.5000e-002  2.0000e-003  7.0000e-003  1.0660e+000  1.1490e+000  3.1310e+000  2.3780e+000  7.7080e+000  3.1860e+000 -1.4947e+001
                 -2.0000e-003  4.0000e-002  5.6000e-002  2.0000e-003  7.0000e-003  1.0620e+000  1.1490e+000  3.1310e+000  2.3780e+000  7.7470e+000  3.3250e+000 -1.4828e+001
                 -2.0000e-003  4.1000e-002  5.7000e-002  2.0000e-003  7.0000e-003  1.0580e+000  1.1490e+000  3.1310e+000  2.3780e+000  7.7910e+000  3.4660e+000 -1.4699e+001
                 -2.0000e-003  4.3000e-002  6.0000e-002  2.0000e-003  7.0000e-003  1.0440e+000  1.1480e+000  3.1310e+000  2.3780e+000  7.8490e+000  3.7510e+000 -1.4419e+001
                 -2.0000e-003  4.5000e-002  6.3000e-002  2.0000e-003  7.0000e-003  1.0290e+000  1.1460e+000  3.1310e+000  2.3780e+000  7.8890e+000  4.0390e+000 -1.4108e+001
                 -2.0000e-003  4.7000e-002  6.6000e-002  2.0000e-003  8.0000e-003  1.0120e+000  1.1430e+000  3.1310e+000  2.3780e+000  7.9090e+000  4.3280e+000 -1.3767e+001
                 -2.0000e-003  5.0000e-002  7.0000e-002  2.0000e-003  8.0000e-003  9.9200e-001  1.1400e+000  3.1310e+000  2.3780e+000  7.9110e+000  4.6120e+000 -1.3394e+001
                 -2.0000e-003  5.3000e-002  7.4000e-002  3.0000e-003  9.0000e-003  9.6500e-001  1.1340e+000  3.1310e+000  2.3780e+000  7.8730e+000  4.9050e+000 -1.2946e+001
                 -1.9000e-003  5.7000e-002  7.9000e-002  3.0000e-003  9.0000e-003  9.3200e-001  1.1250e+000  3.1310e+000  2.3780e+000  7.7880e+000  5.1890e+000 -1.2443e+001
                 -1.9000e-003  6.1000e-002  8.5000e-002  3.0000e-003  1.0000e-002  8.9300e-001  1.1110e+000  3.1310e+000  2.3780e+000  7.6420e+000  5.4500e+000 -1.1892e+001
                 -1.9000e-003  6.3000e-002  8.8000e-002  3.0000e-003  1.0000e-002  8.6300e-001  1.1020e+000  3.1310e+000  2.3780e+000  7.4830e+000  5.5670e+000 -1.1598e+001
                 -1.9000e-003  6.5000e-002  9.1000e-002  3.0000e-003  1.1000e-002  8.4300e-001  1.0910e+000  3.1310e+000  2.3780e+000  7.4020e+000  5.6720e+000 -1.1291e+001
                 -1.9000e-003  7.1000e-002  9.8000e-002  3.0000e-003  1.2000e-002  7.8700e-001  1.0600e+000  3.1310e+000  2.3780e+000  7.0960e+000  5.8280e+000 -1.0643e+001
                 -1.9000e-003  7.7000e-002  1.0700e-001  4.0000e-003  1.3000e-002  7.2000e-001  1.0150e+000  3.1310e+000  2.3780e+000  6.6940e+000  5.9130e+000 -9.8520e+000
                 -1.9000e-003  8.5000e-002  1.1700e-001  4.0000e-003  1.4000e-002  6.4200e-001  9.5000e-001  3.1310e+000  2.3780e+000  6.1600e+000  5.8600e+000 -8.9640e+000
                 -1.9000e-003  9.4000e-002  1.3000e-001  5.0000e-003  1.5000e-002  5.4700e-001  8.5700e-001  3.1310e+000  2.3780e+000  5.4380e+000  5.5920e+000 -7.9900e+000
                 -1.9000e-003  9.2000e-002  1.3700e-001  5.0000e-003  1.6000e-002  5.3100e-001  7.9800e-001  3.1310e+000  2.3780e+000  5.3780e+000  5.3530e+000 -7.4720e+000
                 -1.9000e-003  8.1000e-002  1.4800e-001  5.0000e-003  1.8000e-002  5.6100e-001  7.0600e-001  3.1310e+000  2.3780e+000  5.8320e+000  4.9110e+000 -6.7590e+000
                 -1.8000e-003  7.3000e-002  1.5200e-001  5.0000e-003  1.8000e-002  5.6700e-001  6.5600e-001  3.1310e+000  2.3780e+000  5.9710e+000  4.6520e+000 -6.3660e+000
                 -1.8000e-003  5.3000e-002  1.6600e-001  6.0000e-003  2.0000e-002  6.1200e-001  4.8700e-001  3.1310e+000  2.3780e+000  6.7370e+000  3.6600e+000 -5.1040e+000
                 -1.8000e-003  3.1000e-002  1.0600e-001  6.0000e-003  2.2000e-002  6.7700e-001  4.4500e-001  3.1310e+000  2.3780e+000  7.7970e+000  3.5630e+000 -3.7460e+000
                 -1.8000e-003  6.0000e-003  1.1000e-002  7.0000e-003  2.4000e-002  7.2300e-001  4.2400e-001  3.1310e+000  2.3780e+000  8.8150e+000  3.6570e+000 -2.1830e+000
                 -1.8000e-003  6.0000e-003  1.1000e-002  7.0000e-003  2.4000e-002  7.2300e-001  4.2400e-001  3.1310e+000  2.3780e+000  8.8150e+000  3.6570e+000 -2.1830e+000]];

      %            -attbp4             -abp1               -abp2                   -abp3                -abp4                                                                          
 AA=[AA [-1.8121e+001  3.2700e+001  3.1500e+001  5.9200e+001  4.5000e+001
                 -1.8096e+001  3.3500e+001  3.2300e+001  6.0700e+001  4.6100e+001
                 -1.8047e+001  3.4300e+001  3.3100e+001  6.2200e+001  4.7300e+001
                 -1.8015e+001  3.4800e+001  3.3500e+001  6.3000e+001  4.7900e+001
                 -1.7982e+001  3.5200e+001  2.3500e+001  6.3900e+001  4.8500e+001
                 -1.7907e+001  3.6100e+001  2.4100e+001  6.5500e+001  4.9800e+001
                 -1.7816e+001  3.7000e+001  2.4600e+001  6.7000e+001  5.0900e+001
                 -1.7764e+001  3.7300e+001  2.4900e+001  6.7700e+001  5.1400e+001
                 -1.7708e+001  2.8000e+001  2.5100e+001  6.8300e+001  5.1900e+001
                 -1.7584e+001  2.3700e+001  2.5600e+001  6.9600e+001  5.2900e+001
                 -1.7443e+001  2.4300e+001  2.6400e+001  7.1800e+001  5.4600e+001
                 -1.7286e+001  2.5300e+001  2.7300e+001  7.4300e+001  5.6400e+001
                 -1.7196e+001  2.5700e+001  2.7800e+001  7.5700e+001  5.7500e+001
                 -1.7098e+001  2.6000e+001  2.8300e+001  7.7100e+001  5.8600e+001
                 -1.6885e+001  2.6700e+001  2.9300e+001  8.0100e+001  6.0800e+001
                 -1.6649e+001  2.7400e+001  3.0500e+001  8.3200e+001  6.3200e+001
                 -1.6390e+001  2.8000e+001  3.1700e+001  8.6700e+001  6.5800e+001
                 -1.6107e+001  2.8600e+001  3.2900e+001  9.0400e+001  6.8700e+001
                 -1.5767e+001  2.9100e+001  3.4200e+001  9.4400e+001  7.1700e+001
                 -1.5385e+001  2.9300e+001  3.5400e+001  9.8500e+001  7.4800e+001
                 -1.4966e+001  2.9400e+001  3.6600e+001  1.0300e+002  7.8200e+001
                 -1.4743e+001  2.9000e+001  3.7100e+001  1.0530e+002  8.0000e+001
                 -1.4510e+001  2.9000e+001  3.7500e+001  1.0770e+002  8.1800e+001
                 -1.4017e+001  2.8300e+001  3.8200e+001  1.1270e+002  8.5600e+001
                 -1.3417e+001  2.7200e+001  3.8300e+001  1.1810e+002  8.9700e+001
                 -1.2742e+001  2.5400e+001  3.7600e+001  1.2390e+002  9.4100e+001
                 -1.2003e+001  2.2800e+001  3.5600e+001  1.3020e+002  9.8900e+001
                 -1.1609e+001  2.2700e+001  3.4000e+001  1.3360e+002  1.0140e+002
                 -1.1068e+001  2.4800e+001  3.1200e+001  1.3820e+002  1.0500e+002
                 -1.0769e+001  2.5000e+001  2.9000e+001  1.3820e+002  1.0500e+002
                 -9.8110e+000  2.7000e+001  2.1500e+001  1.3820e+002  1.0500e+002
                 -8.7800e+000  2.9900e+001  1.9600e+001  1.3820e+002  1.0500e+002
                 -7.5930e+000  3.1900e+001  1.8700e+001  1.3820e+002  1.0500e+002
                 -7.5930e+000  3.1900e+001  1.8700e+001  1.3820e+002  1.0500e+002]];
        
%��� 4 ���� ������ �� �� 24,12,2002 ��8
eb=[0.05 0.05 0.05 0.05];
eb_int=eb;

attpb=[-interp1(AA(:,1),AA(:,10),time) -interp1(AA(:,1),AA(:,11),time) -interp1(AA(:,1),AA(:,12),time) -interp1(AA(:,1),AA(:,13),time)]; %-tg
attpb_int=[-AA(:,10),-AA(:,11),-AA(:,12),-AA(:,13)];

apb=[-interp1(AA(:,1),AA(:,14),time) -interp1(AA(:,1),AA(:,15),time) -interp1(AA(:,1),AA(:,16),time) -interp1(AA(:,1),AA(:,17),time)]; %-rg
apb_int=[-AA(:,14),-AA(:,15),-AA(:,16),-AA(:,17)];

attzb=[-interp1(AA(:,1),AA(:,6),time) -interp1(AA(:,1),AA(:,7),time) -interp1(AA(:,1),AA(:,8),time) -interp1(AA(:,1),AA(:,9),time)]; %-Wg
attzb_int=[-AA(:,6),-AA(:,7),-AA(:,8),-AA(:,9)];

w2b=[interp1(AA(:,1),AA(:,2),time) interp1(AA(:,1),AA(:,3),time) interp1(AA(:,1),AA(:,4),time) interp1(AA(:,1),AA(:,5),time)]; %+Vg
w2b_int=[AA(:,2),AA(:,3),AA(:,4),AA(:,5)];

attbp=[-interp1(AA(:,1),AA(:,22),time) -interp1(AA(:,1),AA(:,23),time) -interp1(AA(:,1),AA(:,24),time) -interp1(AA(:,1),AA(:,25),time)]; %-Sg
attbp_int=[-AA(:,22),-AA(:,23),-AA(:,24),-AA(:,25)];

abp=[-interp1(AA(:,1),AA(:,26),time) -interp1(AA(:,1),AA(:,27),time) -interp1(AA(:,1),AA(:,28),time) -interp1(AA(:,1),AA(:,29),time)]; %-mg
abp_int=[-AA(:,26),-AA(:,27),-AA(:,28),-AA(:,29)];

attbz=[-interp1(AA(:,1),AA(:,18),time) -interp1(AA(:,1),AA(:,19),time) -interp1(AA(:,1),AA(:,20),time) -interp1(AA(:,1),AA(:,21),time)]; %-hg
attbz_int=[-AA(:,18),-AA(:,19),-AA(:,20),-AA(:,21)];

%[tty c3t   wy    del    fgp      ftgp      b1     b2        b3       b3t        p2       b4t        b5    b5t      ftd        ] 9x45 
%(1   2     3-6  7-10 11-14 15-18 19-22 23-26 27-30  31-34     35       36-39   40     41      42-45)
%          t                             -attpd           w2n1                  w2n1            w2n3                    w2n4             del1                   del2                del3                del4                    fgp1            fgp2                                                                                                                                                                                                                                                
BB=[0.0000e+000  1.0680e-002  9.2099e+002  4.1639e+003  8.1295e+003  1.6769e+004  2.0000e-002  3.0000e-002  3.0000e-002  5.0000e-002 -1.8900e-004 -4.2800e-003
         1.8000e+001  1.0707e-002  9.7123e+002  4.2700e+003  8.1408e+003  1.8351e+004  2.0000e-002  3.0000e-002  3.0000e-002  5.0000e-002 -4.5800e-004 -4.1400e-003
         3.0000e+001  1.1013e-002  1.0188e+003  4.4358e+003  8.1408e+003  1.9299e+004  2.0000e-002  3.0000e-002  3.0000e-002  5.0000e-002 -7.0600e-004 -4.0000e-003
         4.6000e+001  1.1605e-002  1.0798e+003  4.7943e+003  8.1749e+003  1.9738e+004  2.0000e-002  3.0000e-002  3.0000e-002  5.0000e-002 -1.0100e-003 -3.8300e-003
         6.6000e+001  1.3456e-002  1.1469e+003  5.5250e+003  8.3577e+003  1.9826e+004  2.0000e-002  3.0000e-002  3.0000e-002  5.0000e-002 -1.3300e-003 -3.6700e-003
         8.6000e+001  1.5669e-002  1.1986e+003  6.4985e+003  9.1692e+003  1.9915e+004  2.0000e-002  3.0000e-002  3.0000e-002  5.0000e-002 -1.5500e-003 -3.5200e-003
         1.0200e+002  2.0949e-002  1.2425e+003  7.0254e+003  1.1598e+004  2.0451e+004  2.0000e-002  3.0000e-002  3.0000e-002  5.0000e-002 -1.6500e-003 -3.1100e-003
         1.1000e+002  2.6111e-002  1.2692e+003  7.1311e+003  1.3511e+004  2.1451e+004  2.0000e-002  3.0000e-002  3.0000e-002  5.0000e-002 -1.6600e-003 -2.9700e-003
         1.1630e+002  3.2235e-002  1.3007e+003  7.1843e+003  1.5321e+004  2.3910e+004  2.0000e-002  3.0000e-002  3.0000e-002  5.0000e-002 -1.6500e-003 -2.8800e-003];
%               fgp3                fgp4                   ftgp1                  ftgp2                 ftgp3            ftgp4                -apn1               -apn2               -apn3              -apn4                  -azn1              -azn2                                                                                                                                               
BB=[BB [8.1300e-004 -3.4800e-003 -1.1900e-003 -1.1800e-004 -1.5200e-003  1.1600e-004  2.1639e-003 -3.7050e-003 -2.1167e-003  8.3488e-003  1.7590e-002 -2.2150e-002
                 8.0300e-004 -4.3100e-003 -1.2100e-003 -6.9700e-005 -1.5200e-003  2.9500e-004  2.3402e-003 -4.0767e-003 -2.0681e-003  7.5599e-003  1.9576e-002 -2.5673e-002
                 7.9300e-004 -5.0500e-003 -1.2300e-003 -1.2100e-006 -1.5200e-003  4.3200e-004  2.6075e-003 -4.6958e-003 -2.2451e-003  5.7901e-003  2.1886e-002 -3.0263e-002
                  7.2000e-004 -5.4100e-003 -1.2600e-003  1.3900e-004 -1.5000e-003  5.0100e-004  3.0342e-003 -6.0606e-003 -2.8861e-003  4.0062e-003 -2.5340e-002 -3.9138e-002
                  3.5400e-004 -5.4900e-003 -1.3000e-003  4.4700e-004 -1.4200e-003  5.1600e-004  4.2169e-003 -9.1289e-003 -5.5156e-003  3.7605e-003  3.0645e-002 -5.2878e-002
                 -8.4900e-004 -5.4400e-003 -1.3100e-003  1.0000e-003 -1.0700e-003  5.1500e-004  5.0986e-003 -1.0624e-002 -1.2677e-002  5.1486e-003  3.7421e-002 -5.9433e-002
                 -2.4400e-003 -5.1300e-003 -1.3000e-003  1.3600e-003 -4.9400e-004  5.1300e-004  7.3789e-003 -1.0506e-002 -2.6658e-002  1.2284e-002  4.7314e-002 -4.8653e-002
                 -3.4600e-003 -4.5800e-003 -1.2700e-003  1.4200e-003 -2.2100e-004  4.9200e-004  8.8856e-003 -1.0293e-002 -3.2805e-002  2.1913e-002  4.9213e-002 -3.9946e-002
                 -4.6200e-003 -3.4600e-003 -1.2400e-003  1.4500e-003  3.2200e-005  4.0000e-004  1.0642e-002 -1.0578e-002 -3.4042e-002  3.8169e-002  5.1872e-002 -3.4640e-002]];
%                -azn3                 -azn4              -and1                 -and2                 -and3                -and4             -attnd1             -attnd2              -attnd3               -attnd4            -attdz               -attdn1                                                                                                                                                            
BB=[BB [-1.1112e-002  3.6669e-002  8.3620e+003 -7.7687e+003 -3.1705e+003  6.6191e+003  1.9241e+001 -2.0064e+001 -8.9695e+000  2.3801e+001  3.9870e-001  8.5000e-004
                -1.1593e-002  3.4498e-002  8.4199e+003 -8.1973e+003 -3.0601e+003  5.1372e+003  1.9542e+001 -2.1339e+001 -8.6684e+000  1.9811e+001  3.9870e-001  8.3000e-004
                 -1.3026e-002  2.7193e-002  8.5288e+003 -8.7731e+003 -3.1560e+003  3.5318e+003  1.9696e+001 -2.2739e+001 -8.8645e+000  1.3955e+001  3.9870e-001  8.1000e-004
                 -1.7211e-002  1.9695e-002  8.6097e+003 -9.6090e+003 -3.6322e+003  2.2677e+003  1.9613e+001 -2.4925e+001 -1.0097e+001  8.8060e+000  3.9870e-001  7.8000e-004
                 -3.0345e-002  1.7936e-002  8.5677e+003 -1.0113e+004 -5.1054e+003  1.7566e+003  1.9403e+001 -2.6803e+001 -1.4383e+001  6.6987e+000  3.9870e-001  7.3000e-004
                 -6.7871e-002  2.4654e-002  8.6937e+003 -8.1626e+003 -8.1036e+003  1.7289e+003  1.9515e+001 -2.2968e+001 -2.4498e+001  7.1716e+000  3.9870e-001  7.4000e-004
                 -1.1516e-001  4.8653e-002  9.8031e+003 -4.7638e+003 -8.0118e+003  1.5236e+003  2.1362e+001 -1.4413e+001 -2.9478e+001  9.8099e+000  3.9870e-001  9.2000e-004
                 -1.1572e-001  7.1824e-002  9.9140e+003 -3.2572e+003 -4.7879e+003  5.5889e+002  2.3362e+001 -1.1437e+001 -2.5830e+001  1.2241e+001  3.9870e-001  1.1100e-003
                 -9.8469e-002  1.0243e-001  1.0479e+004 -2.4234e+003 -1.6538e+003 -1.9158e+003  2.6174e+001 -9.6660e+000 -1.8536e+001  1.3071e+001  3.9870e-001  1.3700e-003]];
%                              -attdn2      -attdn3            -attdn4               -adp                   -attdp       ftd1        ftd2         ftd3          ftd4                  
        BB=[BB [ -4.8000e-004 -8.0000e-005 -5.5000e-004  7.5568e+000  4.2900e+000  8.8000e-004 -9.0000e-004 -3.5000e-004  5.1000e-004
                -4.8000e-004 -8.0000e-005 -6.2000e-004  7.9384e+000  4.3100e+000  9.1000e-004 -9.7000e-004 -3.4000e-004  3.4000e-004
                -4.8000e-004 -8.0000e-005 -4.9000e-004  8.5520e+000  4.3498e+000  9.3000e-004 -1.0400e-003 -3.5000e-004  2.0000e-004
                -4.3000e-004 -7.0000e-005 -3.1000e-004  9.4845e+000  4.4415e+000  9.4000e-004 -1.1600e-003 -4.1000e-004  9.0000e-005
                -3.0000e-004 -3.0000e-005 -2.4000e-004  1.1542e+001  4.8362e+000  9.4000e-004 -1.2800e-003 -6.2000e-004  6.0000e-005
                -3.0000e-005 2.1000e-004 -3.2000e-004  1.4398e+001  4.9917e+000  9.5000e-004 -1.1600e-003 -1.1400e-003  9.0000e-005
                1.2000e-004 9.6000e-004 -7.8000e-004  1.7069e+001  5.4422e+000  9.8000e-004 -8.0000e-004 -1.5300e-003  2.8000e-004
                1.7000e-004 1.5400e-003 -1.4900e-003  1.7521e+001  5.7891e+000  1.0300e-003 -6.7000e-004 -1.5300e-003  5.3000e-004
                2.0000e-004 1.8400e-003 -2.8000e-003  1.7600e+001  6.0562e+000  1.0900e-003 -6.0000e-004 -1.3500e-003  8.7000e-004]];
                 
%��� 4 ���� ��������� �� �� 13,02,2003 �� 28,02,2003

delta=[interp1(BB(:,1),BB(:,7),time) interp1(BB(:,1),BB(:,8),time) interp1(BB(:,1),BB(:,9),time) interp1(BB(:,1),BB(:,10),time)];%del
delta_int=[BB(:,7),BB(:,8),BB(:,9),BB(:,10)];

w2n=[interp1(BB(:,1),BB(:,3),time) interp1(BB(:,1),BB(:,4),time) interp1(BB(:,1),BB(:,5),time) interp1(BB(:,1),BB(:,6),time)];%Wy
w2n_int=[BB(:,3),BB(:,4),BB(:,5),BB(:,6)];

en=[delta(1)*sqrt(w2n(1))/pi   delta(2)*sqrt(w2n(2))/pi delta(3)*sqrt(w2n(3))/pi delta(4)*sqrt(w2n(4))/pi]; 
en_int=[delta_int(:,1).*sqrt(w2n_int(:,1))./pi   delta_int(:,2).*sqrt(w2n_int(:,2))./pi delta_int(:,3).*sqrt(w2n_int(:,3))./pi delta_int(:,4).*sqrt(w2n_int(:,4))./pi];

apn=[-interp1(BB(:,1),BB(:,19),time) -interp1(BB(:,1),BB(:,20),time) -interp1(BB(:,1),BB(:,21),time) -interp1(BB(:,1),BB(:,22),time)];%-b1
apn_int=[-BB(:,19),-BB(:,20),-BB(:,21),-BB(:,22)];

azn=[-interp1(BB(:,1),BB(:,23),time) -interp1(BB(:,1),BB(:,24),time) -interp1(BB(:,1),BB(:,25),time) -interp1(BB(:,1),BB(:,26),time)];%-b2
azn_int=[-BB(:,23),-BB(:,24),-BB(:,25),-BB(:,26)];

attnd=[-interp1(BB(:,1),BB(:,31),time) -interp1(BB(:,1),BB(:,32),time) -interp1(BB(:,1),BB(:,33),time) -interp1(BB(:,1),BB(:,34),time)];%-b3t
attnd_int=[-BB(:,31),-BB(:,32),-BB(:,33),-BB(:,34)];

and=[-interp1(BB(:,1),BB(:,27),time) -interp1(BB(:,1),BB(:,28),time) -interp1(BB(:,1),BB(:,29),time) -interp1(BB(:,1),BB(:,30),time)];%-b3
and_int=[-BB(:,27),-BB(:,28),-BB(:,29),-BB(:,30)];

attdz=[-interp1(BB(:,1),BB(:,35),time)];%-p2
attdz_int=[-BB(:,35)];

adp=[-interp1(BB(:,1),BB(:,40),time)];%-b5
adp_int=[-BB(:,40)];

attdp=[-interp1(BB(:,1),BB(:,41),time)];%-b5t
attdp_int=[-BB(:,41)];

attdn=[-interp1(BB(:,1),BB(:,36),time) -interp1(BB(:,1),BB(:,37),time) -interp1(BB(:,1),BB(:,38),time) -interp1(BB(:,1),BB(:,39),time)];%-b4t
attdn_int=[-BB(:,36),-BB(:,37),-BB(:,38),-BB(:,39)];

ftd=[interp1(BB(:,1),BB(:,42),time) interp1(BB(:,1),BB(:,43),time) interp1(BB(:,1),BB(:,44),time) interp1(BB(:,1),BB(:,45),time)];%ftd
ftd_int=[BB(:,42),BB(:,43),BB(:,44),BB(:,45)];

fxgp=[interp1(BB(:,1),BB(:,11),time) interp1(BB(:,1),BB(:,12),time) interp1(BB(:,1),BB(:,13),time) interp1(BB(:,1),BB(:,14),time)];
fxgp_int=[BB(:,11),BB(:,12),BB(:,13),BB(:,14)];

ftgp=[interp1(BB(:,1),BB(:,15),time) interp1(BB(:,1),BB(:,16),time) interp1(BB(:,1),BB(:,17),time) interp1(BB(:,1),BB(:,18),time)];
ftgp_int=[BB(:,15),BB(:,16),BB(:,17),BB(:,18)];

ftxdus1=ftgp;
ftxdus2=ftd;


% privod

Tou=0.0278;  %tou=0.0217...0.0278
beta=0.5*0.0001;% beta=(0.5...0.67)*0.0001
Tkp=sqrt(Tou^2-beta);
w2d=1/Tkp^2;
ekp=(0.202+0.156)/2;% ekp=0.156...0.202
ed=2*ekp/Tkp;
%classic method 

%==========================================================================
%==========================================================================

A=zeros(11);
A=[1 0 -attpb(1)  -attpb(2)  -attpb(3)  -attpb(4)  0 0 0 0 -attpd;
      0 1 -attzb(1)  -attzb(2)  -attzb(3)  -attzb(4)  0 0 0 0 0;
      -attbp(1)  -attbz(1)  1 0 0 0 0 0 0 0 0;
      -attbp(2)  -attbz(2)  0 1 0 0 0 0 0 0 0;
      -attbp(3)  -attbz(3)  0 0 1 0 0 0 0 0 0;
      -attbp(4)  -attbz(4)  0 0 0 1 0 0 0 0 0;
      0 0 0 0 0 0 1 0 0 0 -attnd(1) ;
      0 0 0 0 0 0 0 1 0 0 -attnd(2) ;
      0 0 0 0 0 0 0 0 1 0 -attnd(3) ;
      0 0 0 0 0 0 0 0 0 1 -attnd(4) ;
      -attdp -attdz 0 0 0 0 -attdn(1)  -attdn(2)  -attdn(3)  -attdn(4)  1];

  B=zeros(11);
B=[0 atpz 0 0 0 0 0 0 0 0 0;
      0 atzz 0 0 0 0 0 0 0 0 0;
      0 0 -eb(1)  0 0 0 0 0 0 0 0;
      0 0 0 -eb(2)  0 0 0 0 0 0 0;
      0 0 0 0 -eb(3)  0 0 0 0 0 0;
      0 0 0 0 0 -eb(4)  0 0 0 0 0;
      0 0 0 0 0 0 -en(1)  0 0 0 0;
      0 0 0 0 0 0 0 -en(2)  0 0 0;
      0 0 0 0 0 0 0 0 -en(3)  0 0;
      0 0 0 0 0 0 0 0 0 -en(4)  0;
      0 0 0 0 0 0 0 0 0 0 -ed;];

  C=zeros(11);
C=[app 0 apb(1)  apb(2)  apb(3)  apb(4)  apn(1)  apn(2)  apn(3)  apn(4)  apd;
      azp 0 0 0 0 0 azn(1)  azn(2)  azn(3)  azn(4)  azd;
      abp(1)  0 -w2b(1)  0 0 0 0 0 0 0 0;
      abp(2)  0 0 -w2b(2)  0 0 0 0 0 0 0;
      abp(3)  0 0 0 -w2b(3)  0 0 0 0 0 0;
      abp(4)  0 0 0 0 -w2b(4)  0 0 0 0 0;
      0 0 0 0 0 0 -w2n(1)  0 0 0 and(1) ;
      0 0 0 0 0 0 0 -w2n(2)  0 0 and(2) ;
      0 0 0 0 0 0 0 0 -w2n(3)  0 and(3) ;
      0 0 0 0 0 0 0 0 0 -w2n(4)  and(4) ;
      adp 0 0 0 0 0 0 0 0 0 adp-w2d;] ;
  
      U=[0 0 0 0 0 0 0 0 0 0 w2d];
U=U';




xgp=12.760;%m
xt=[19.81 19.81 19.81 19.8 19.79 19.78 19.76 19.75 19.73 19.72 19.7 19.68 19.66 19.63 19.6 19.57 19.56 19.54 19.51 19.49 19.48 19.46 19.41 19.38 19.36 19.31 19.26 19.21  19.16 19.11 19.06 19.01 18.96 18.88 18.79 18.7 18.61 18.52 18.43 18.35 18.26 18.17 18.08 17.94 17.79 17.64 17.48 17.33 17.18 17.03 16.88 16.83 16.72 16.51 16.3 16.09 15.87 15.63 15.4 15.38 ]; 
tx=[10 10.7 12 14 16 18 20 22 24 26 28 30 32 34 36 38 39.9 40 42 44 44.09 46 48 49.09 50 52 54 56 58 60 62 64 66 68 70 72 74 76 78 80 82 84 86 88 90 92 94 96 98 100  102 102.59 104 106 108 110 112 114 116 116.3];

mE=zeros(22);
mA=zeros(22);
mB=zeros(22);
mC=zeros(22);

mE=[zeros(11) A;eye(11) zeros(11)];
mA=[C B; zeros(11) eye(11);];
mB=[U; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0; ];
mC=[1 0 0 0 0 0 ftgp  0 0 0 0 0 0 0 0 0 0 0 0;
          0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 ftgp  0;
          0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 ftd  0;
          0 0 0 0 0 0 0 0 0 0 0 (interp1(tx,xgp-xt,time)) 1 0 0 0 0 fxgp  0;    ];
    %mC=eye(22)   ;

   %           mC=eye(22);
mD=0;
%mD=[0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;];
object=dss(mA,mB,mC,mD,mE);

[Am Bm Cm Dm]=ssdata(object);


WWW=mC(1,:)*((p*mE-mA)\mB).*(Tkp^2*p^2+2*ekp*Tkp*p+1);
 



% mag=[];
% ang=[];
% 
% for w=1:0.001:10
%     
% WW=mC(1,:)*(inv(j*w*mE-mA))*mB;
%     
%        
% mag=[mag 20*log10(abs(WW))];
% ang=[ang angle(WW)/pi*180];
% 
% end
% 
% semilogx([1:0.001:10],mag);
% 
% bode(object(1),[1:0.001:10]);

% WW=[];
% DT=vpa(det(p*mE-mA),50);
% MM=p*mE'-mA';
% for k1=1:22
%     for k2=1:22
%     if abs(mB(k2))>0
%     DT1=MM;
%     DT1(k1,:)=[];
%     DT1(:,k2)=[];
%     DMM=vpa(det(DT1)*((-1)^(1+k1)),50)*mB(k2);
%     WW{k1,k2}=DMM/DT;
%     end
%   end
% end


% Wdus=(wdus);
% 
% data=append(1,Wdus,Wdus,1);
% object2=series(object,data,[1:4],[1:4]);


%==========================================================================
%==========================================================================
%====GIROPLATFORMA=======================================================

