Auto Spice
.include '/home/xitang/tangxifan-eda-tools/branches/fpga_flow/tech/45nm_HP.pm'
.param tech = 45e-9
.param tempr = 25
.param simt = 5n
.param Vol=0.85
.param pnratio=2
.param nmos_size=22.74
.include /home/xitang/tangxifan-eda-tools/branches/fpga_flow/power_tech_script/spice/subckt/nmos_pmos.sp
.include /home/xitang/tangxifan-eda-tools/branches/fpga_flow/power_tech_script/spice/subckt/mux2.sp
.include /home/xitang/tangxifan-eda-tools/branches/fpga_flow/power_tech_script/spice/subckt/mux2trans.sp
.include /home/xitang/tangxifan-eda-tools/branches/fpga_flow/power_tech_script/spice/subckt/mux3.sp
.include /home/xitang/tangxifan-eda-tools/branches/fpga_flow/power_tech_script/spice/subckt/mux4.sp
.include /home/xitang/tangxifan-eda-tools/branches/fpga_flow/power_tech_script/spice/subckt/mux5.sp
.include /home/xitang/tangxifan-eda-tools/branches/fpga_flow/power_tech_script/spice/subckt/inv.sp
.include /home/xitang/tangxifan-eda-tools/branches/fpga_flow/power_tech_script/spice/subckt/dff.sp
.include /home/xitang/tangxifan-eda-tools/branches/fpga_flow/power_tech_script/spice/subckt/level_restorer.sp
.param rise = 'simt/500'


Vdd1 Vdd1 0 Vol
Vdd2 Vdd2 0 Vol
Vsram Vsram 0 Vol

Vin1 in1 0 PULSE(0 Vol 0.3n 0n 0n 4n 20n)
Vin2 in2 0 PULSE(0 Vol 0.9n 0n 0n 4n 20n)
Vin3 in3 0 PULSE(0 Vol 1.5n 0n 0n 4n 20n)
Vin4 in4 0 PULSE(0 Vol 2.1n 0n 0n 4n 20n)
Vin5 in5 0 PULSE(0 Vol 2.7n 0n 0n 4n 20n)
Vin6 in6 0 PULSE(0 Vol 3.3n 0n 0n 4n 20n)

X1 in1 sel1mid Vdd1 0 inv nsize=1 psize='1*pnratio'
X2 sel1mid sel1 Vdd1 0 inv nsize=2 psize='2*pnratio'
X3 in1 sel1n Vdd1 0 inv nsize=2 psize='2*pnratio'

X4 in2 sel2mid Vdd1 0 inv nsize=1 psize='1*pnratio'
X5 sel2mid sel2 Vdd1 0 inv nsize=2 psize='2*pnratio'
X6 in2 sel2n Vdd1 0 inv nsize=2 psize='2*pnratio'

X12 in3 sel3mid Vdd1 0 inv nsize=1 psize='1*pnratio'
X13 sel3mid sel3 Vdd1 0 inv nsize=2 psize='2*pnratio'
X14 in3 sel3n Vdd1 0 inv nsize=2 psize='2*pnratio'

X19 in4 sel4mid Vdd1 0 inv nsize=1 psize='1*pnratio'
X20 sel4mid sel4 Vdd1 0 inv nsize=2 psize='2*pnratio'
X21 in4 sel4n Vdd1 0 inv nsize=2 psize='2*pnratio'

X34 in5 sel5mid Vdd1 0 inv nsize=1 psize='1*pnratio'
X35 sel5mid sel5 Vdd1 0 inv nsize=2 psize='2*pnratio'
X36 in5 sel5n Vdd1 0 inv nsize=2 psize='2*pnratio'

X105 in6 sel6mid Vdd1 0 inv nsize=1 psize='1*pnratio'
X106 sel6mid sel6 Vdd1 0 inv nsize=2 psize='2*pnratio'
X107 in6 sel6n Vdd1 0 inv nsize=2 psize='2*pnratio'

X57 sram1 sram0 mid6a sel6 sel6n mux2 size='nmos_size'
X58 sram0 sram1 mid6b sel6 sel6n mux2 size='nmos_size'
X59 sram0 sram1 mid6c sel6 sel6n mux2 size='nmos_size'
X60 sram1 sram0 mid6d sel6 sel6n mux2 size='nmos_size'
X61 sram0 sram1 mid6e sel6 sel6n mux2 size='nmos_size'
X62 sram1 sram0 mid6f sel6 sel6n mux2 size='nmos_size'
X63 sram1 sram0 mid6g sel6 sel6n mux2 size='nmos_size'
X64 sram0 sram1 mid6h sel6 sel6n mux2 size='nmos_size'
X65 sram0 sram1 mid6i sel6 sel6n mux2 size='nmos_size'
X66 sram1 sram0 mid6j sel6 sel6n mux2 size='nmos_size'
X67 sram1 sram0 mid6k sel6 sel6n mux2 size='nmos_size'
X68 sram0 sram1 mid6l sel6 sel6n mux2 size='nmos_size'
X69 sram1 sram0 mid6m sel6 sel6n mux2 size='nmos_size'
X70 sram0 sram1 mid6n sel6 sel6n mux2 size='nmos_size'
X71 sram0 sram1 mid6o sel6 sel6n mux2 size='nmos_size'
X72 sram1 sram0 mid6p sel6 sel6n mux2 size='nmos_size'
X73 sram0 sram1 mid6q sel6 sel6n mux2 size='nmos_size'
X74 sram1 sram0 mid6r sel6 sel6n mux2 size='nmos_size'
X75 sram1 sram0 mid6s sel6 sel6n mux2 size='nmos_size'
X76 sram0 sram1 mid6t sel6 sel6n mux2 size='nmos_size'
X77 sram1 sram0 mid6u sel6 sel6n mux2 size='nmos_size'
X78 sram0 sram1 mid6v sel6 sel6n mux2 size='nmos_size'
X79 sram0 sram1 mid6w sel6 sel6n mux2 size='nmos_size'
X80 sram1 sram0 mid6x sel6 sel6n mux2 size='nmos_size'
X81 sram1 sram0 mid6y sel6 sel6n mux2 size='nmos_size'
X82 sram0 sram1 mid6z sel6 sel6n mux2 size='nmos_size'
X83 sram0 sram1 mid6za sel6 sel6n mux2 size='nmos_size'
X84 sram1 sram0 mid6zb sel6 sel6n mux2 size='nmos_size'
X85 sram0 sram1 mid6zc sel6 sel6n mux2 size='nmos_size'
X86 sram1 sram0 mid6zd sel6 sel6n mux2 size='nmos_size'
X87 sram1 sram0 mid6ze sel6 sel6n mux2 size='nmos_size'
X88 sram0 sram1 mid6zf sel6 sel6n mux2 size='nmos_size'

X37 mid6a mid6b mid5a sel5 sel5n mux2 size='nmos_size'
X38 mid6c mid6d mid5b sel5 sel5n mux2 size='nmos_size'
X39 mid6e mid6f mid5c sel5 sel5n mux2 size='nmos_size'
X40 mid6g mid6h mid5d sel5 sel5n mux2 size='nmos_size'
X41 mid6i mid6j mid5e sel5 sel5n mux2 size='nmos_size'
X42 mid6k mid6l mid5f sel5 sel5n mux2 size='nmos_size'
X43 mid6m mid6n mid5g sel5 sel5n mux2 size='nmos_size'
X44 mid6o mid6p mid5h sel5 sel5n mux2 size='nmos_size'
X45 mid6q mid6r mid5i sel5 sel5n mux2 size='nmos_size'
X46 mid6s mid6t mid5j sel5 sel5n mux2 size='nmos_size'
X47 mid6u mid6v mid5k sel5 sel5n mux2 size='nmos_size'
X48 mid6w mid6x mid5l sel5 sel5n mux2 size='nmos_size'
X49 mid6y mid6z mid5m sel5 sel5n mux2 size='nmos_size'
X50 mid6za mid6zb mid5n sel5 sel5n mux2 size='nmos_size'
X51 mid6zc mid6zd mid5o sel5 sel5n mux2 size='nmos_size'
X52 mid6ze mid6zf mid5p sel5 sel5n mux2 size='nmos_size'

X89  mid5a mid5alv Vdd2 0 levr
X90  mid5b mid5blv Vdd2 0 levr
X91  mid5c mid5clv Vdd2 0 levr
X92  mid5d mid5dlv Vdd2 0 levr
X93  mid5e mid5elv Vdd2 0 levr
X94  mid5f mid5flv Vdd2 0 levr
X95  mid5g mid5glv Vdd2 0 levr
X96  mid5h mid5hlv Vdd2 0 levr
X97  mid5i mid5ilv Vdd2 0 levr
X98  mid5j mid5jlv Vdd2 0 levr
X99  mid5k mid5klv Vdd2 0 levr
X100 mid5l mid5llv Vdd2 0 levr
X101 mid5m mid5mlv Vdd2 0 levr
X102 mid5n mid5nlv Vdd2 0 levr
X103 mid5o mid5olv Vdd2 0 levr
X104 mid5p mid5plv Vdd2 0 levr

X22 mid5alv mid5blv mid4a sel4 sel4n mux2 size='nmos_size'
X23 mid5clv mid5dlv mid4b sel4 sel4n mux2 size='nmos_size'
X24 mid5elv mid5flv mid4c sel4 sel4n mux2 size='nmos_size'
X25 mid5glv mid5hlv mid4d sel4 sel4n mux2 size='nmos_size'
X26 mid5ilv mid5jlv mid4e sel4 sel4n mux2 size='nmos_size'
X27 mid5klv mid5llv mid4f sel4 sel4n mux2 size='nmos_size'
X28 mid5mlv mid5nlv mid4g sel4 sel4n mux2 size='nmos_size'
X29 mid5olv mid5plv mid4h sel4 sel4n mux2 size='nmos_size'


X15 mid4a mid4b mid3a sel3 sel3n mux2 size='nmos_size'
X16 mid4c mid4d mid3b sel3 sel3n mux2 size='nmos_size'
X17 mid4e mid4f mid3c sel3 sel3n mux2 size='nmos_size'
X18 mid4g mid4h mid3d sel3 sel3n mux2 size='nmos_size'

X30 mid3a mid3alv Vdd2 0 levr
X31 mid3b mid3blv Vdd2 0 levr
X32 mid3c mid3clv Vdd2 0 levr
X33 mid3d mid3dlv Vdd2 0 levr

X7 mid3alv mid3blv mid2a sel2 sel2n mux2 size='nmos_size'
X8 mid3clv mid3dlv mid2b sel2 sel2n mux2 size='nmos_size'

X9 mid2a mid2b mid1a sel1 sel1n mux2 size='nmos_size'

X10 mid1a out Vdd2 0 levr

Xs1 0 sram1 Vsram 0 inv nsize=32 psize='32*pnratio'
Xs0 Vsram sram0 Vsram 0 inv nsize=32 psize='32*pnratio'



.TEMP tempr

.OP
.OPTIONS POST

.tran 'simt/10000' '2*simt'
.measure tran Edrivers INTEG I(Vdd1)
.measure tran Elevl INTEG I(Vdd2) 
.measure tran Esram INTEG I(Vsram) 
.measure tran E Param=('(-Edrivers-Elevl-Esram)*Vol')
.measure tran power Param=('E/simt/2')


.end
