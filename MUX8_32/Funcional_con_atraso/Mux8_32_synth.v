/* Generated by Yosys 0.9+3565 (git sha1 474cd02e, gcc 9.3.0-10ubuntu2 -fPIC -Os) */

(* top =  1  *)
(* src = "Mux8_32_synth.v:1.1-78.10" *)
module Mux8_32_synth(clk_f, clk_4f, data_in, valid_in, data_out, valid_out);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  wire _128_;
  wire _129_;
  wire _130_;
  wire _131_;
  wire _132_;
  wire _133_;
  wire _134_;
  wire _135_;
  wire _136_;
  wire _137_;
  wire _138_;
  wire _139_;
  wire _140_;
  wire _141_;
  wire _142_;
  wire _143_;
  wire _144_;
  wire _145_;
  wire _146_;
  wire _147_;
  wire _148_;
  wire _149_;
  wire _150_;
  wire _151_;
  wire _152_;
  wire _153_;
  wire _154_;
  wire _155_;
  wire _156_;
  wire _157_;
  wire _158_;
  wire _159_;
  wire _160_;
  wire _161_;
  wire _162_;
  wire _163_;
  wire _164_;
  wire _165_;
  wire _166_;
  wire _167_;
  wire _168_;
  wire _169_;
  wire _170_;
  wire _171_;
  wire _172_;
  wire _173_;
  wire _174_;
  wire _175_;
  wire _176_;
  wire _177_;
  wire _178_;
  wire _179_;
  wire _180_;
  wire _181_;
  wire _182_;
  wire _183_;
  wire _184_;
  wire _185_;
  wire _186_;
  wire _187_;
  wire _188_;
  wire _189_;
  wire _190_;
  wire _191_;
  wire _192_;
  wire _193_;
  wire _194_;
  wire _195_;
  wire _196_;
  wire _197_;
  wire _198_;
  wire _199_;
  wire _200_;
  wire _201_;
  wire _202_;
  wire _203_;
  wire _204_;
  wire _205_;
  wire _206_;
  wire _207_;
  wire _208_;
  wire _209_;
  wire _210_;
  wire _211_;
  wire _212_;
  wire _213_;
  wire _214_;
  wire _215_;
  wire _216_;
  wire _217_;
  wire _218_;
  wire _219_;
  wire _220_;
  wire _221_;
  wire _222_;
  wire _223_;
  wire _224_;
  wire _225_;
  wire _226_;
  wire _227_;
  wire _228_;
  wire _229_;
  wire _230_;
  wire _231_;
  wire _232_;
  wire _233_;
  wire _234_;
  wire _235_;
  wire _236_;
  wire _237_;
  wire _238_;
  wire _239_;
  wire _240_;
  wire _241_;
  wire _242_;
  wire _243_;
  wire _244_;
  wire _245_;
  wire _246_;
  wire _247_;
  wire _248_;
  wire _249_;
  wire _250_;
  wire _251_;
  wire _252_;
  wire _253_;
  wire _254_;
  wire _255_;
  wire _256_;
  wire _257_;
  wire _258_;
  wire _259_;
  wire _260_;
  wire _261_;
  wire _262_;
  wire _263_;
  wire _264_;
  wire _265_;
  wire _266_;
  wire _267_;
  wire _268_;
  wire _269_;
  wire _270_;
  wire _271_;
  wire _272_;
  wire _273_;
  wire _274_;
  wire _275_;
  wire _276_;
  wire _277_;
  wire _278_;
  wire _279_;
  wire _280_;
  wire _281_;
  wire _282_;
  wire _283_;
  wire _284_;
  wire _285_;
  wire _286_;
  wire _287_;
  wire _288_;
  wire _289_;
  wire _290_;
  wire _291_;
  wire _292_;
  wire _293_;
  wire _294_;
  wire _295_;
  wire _296_;
  wire _297_;
  (* src = "Mux8_32_synth.v:32.11-32.13" *)
  wire [7:0] A1;
  (* src = "Mux8_32_synth.v:33.11-33.13" *)
  wire [7:0] A2;
  (* src = "Mux8_32_synth.v:34.11-34.13" *)
  wire [7:0] A3;
  (* src = "Mux8_32_synth.v:36.12-36.18" *)
  wire [31:0] buffer;
  (* src = "Mux8_32_synth.v:3.11-3.17" *)
  input clk_4f;
  (* src = "Mux8_32_synth.v:2.11-2.16" *)
  input clk_f;
  (* init = 3'h0 *)
  (* src = "Mux8_32_synth.v:10.11-10.18" *)
  wire [2:0] counter;
  (* src = "Mux8_32_synth.v:4.17-4.24" *)
  input [7:0] data_in;
  (* src = "Mux8_32_synth.v:6.23-6.31" *)
  output [31:0] data_out;
  (* src = "Mux8_32_synth.v:39.5-39.9" *)
  wire flag;
  (* src = "Mux8_32_synth.v:5.11-5.19" *)
  input valid_in;
  (* src = "Mux8_32_synth.v:7.16-7.25" *)
  output valid_out;
  NOT _298_ (
    .A(valid_in),
    .Y(_095_)
  );
  NOT _299_ (
    .A(clk_4f),
    .Y(_001_)
  );
  NOT _300_ (
    .A(flag),
    .Y(_096_)
  );
  NOT _301_ (
    .A(counter[2]),
    .Y(_097_)
  );
  NOT _302_ (
    .A(counter[0]),
    .Y(_098_)
  );
  NOT _303_ (
    .A(counter[1]),
    .Y(_099_)
  );
  NOR _304_ (
    .A(_095_),
    .B(counter[0]),
    .Y(_075_)
  );
  NAND _305_ (
    .A(counter[0]),
    .B(counter[1]),
    .Y(_100_)
  );
  NOR _306_ (
    .A(counter[2]),
    .B(_098_),
    .Y(_101_)
  );
  NAND _307_ (
    .A(_097_),
    .B(counter[0]),
    .Y(_102_)
  );
  NOR _308_ (
    .A(counter[2]),
    .B(_100_),
    .Y(_103_)
  );
  NAND _309_ (
    .A(counter[1]),
    .B(_101_),
    .Y(_104_)
  );
  NAND _310_ (
    .A(counter[2]),
    .B(_100_),
    .Y(_105_)
  );
  NOT _311_ (
    .A(_105_),
    .Y(_106_)
  );
  NOR _312_ (
    .A(_103_),
    .B(_106_),
    .Y(_107_)
  );
  NOR _313_ (
    .A(counter[0]),
    .B(counter[1]),
    .Y(_108_)
  );
  NAND _314_ (
    .A(_098_),
    .B(_099_),
    .Y(_109_)
  );
  NOR _315_ (
    .A(_097_),
    .B(_109_),
    .Y(_110_)
  );
  NAND _316_ (
    .A(counter[2]),
    .B(_108_),
    .Y(_111_)
  );
  NAND _317_ (
    .A(valid_in),
    .B(_111_),
    .Y(_112_)
  );
  NOR _318_ (
    .A(_107_),
    .B(_112_),
    .Y(_074_)
  );
  NAND _319_ (
    .A(valid_in),
    .B(_100_),
    .Y(_113_)
  );
  NOR _320_ (
    .A(_108_),
    .B(_113_),
    .Y(_073_)
  );
  NOR _321_ (
    .A(counter[2]),
    .B(counter[0]),
    .Y(_114_)
  );
  NAND _322_ (
    .A(_097_),
    .B(_098_),
    .Y(_115_)
  );
  NOR _323_ (
    .A(_099_),
    .B(_115_),
    .Y(_116_)
  );
  NAND _324_ (
    .A(counter[1]),
    .B(_114_),
    .Y(_117_)
  );
  NAND _325_ (
    .A(data_in[7]),
    .B(_116_),
    .Y(_118_)
  );
  NAND _326_ (
    .A(A2[7]),
    .B(_117_),
    .Y(_119_)
  );
  NAND _327_ (
    .A(_118_),
    .B(_119_),
    .Y(_072_)
  );
  NAND _328_ (
    .A(data_in[6]),
    .B(_116_),
    .Y(_120_)
  );
  NAND _329_ (
    .A(A2[6]),
    .B(_117_),
    .Y(_121_)
  );
  NAND _330_ (
    .A(_120_),
    .B(_121_),
    .Y(_071_)
  );
  NAND _331_ (
    .A(data_in[5]),
    .B(_116_),
    .Y(_122_)
  );
  NAND _332_ (
    .A(A2[5]),
    .B(_117_),
    .Y(_123_)
  );
  NAND _333_ (
    .A(_122_),
    .B(_123_),
    .Y(_070_)
  );
  NAND _334_ (
    .A(data_in[4]),
    .B(_116_),
    .Y(_124_)
  );
  NAND _335_ (
    .A(A2[4]),
    .B(_117_),
    .Y(_125_)
  );
  NAND _336_ (
    .A(_124_),
    .B(_125_),
    .Y(_069_)
  );
  NAND _337_ (
    .A(data_in[3]),
    .B(_116_),
    .Y(_126_)
  );
  NAND _338_ (
    .A(A2[3]),
    .B(_117_),
    .Y(_127_)
  );
  NAND _339_ (
    .A(_126_),
    .B(_127_),
    .Y(_068_)
  );
  NAND _340_ (
    .A(data_in[2]),
    .B(_116_),
    .Y(_128_)
  );
  NAND _341_ (
    .A(A2[2]),
    .B(_117_),
    .Y(_129_)
  );
  NAND _342_ (
    .A(_128_),
    .B(_129_),
    .Y(_067_)
  );
  NAND _343_ (
    .A(data_in[1]),
    .B(_116_),
    .Y(_130_)
  );
  NAND _344_ (
    .A(A2[1]),
    .B(_117_),
    .Y(_131_)
  );
  NAND _345_ (
    .A(_130_),
    .B(_131_),
    .Y(_066_)
  );
  NAND _346_ (
    .A(data_in[0]),
    .B(_116_),
    .Y(_132_)
  );
  NAND _347_ (
    .A(A2[0]),
    .B(_117_),
    .Y(_133_)
  );
  NAND _348_ (
    .A(_132_),
    .B(_133_),
    .Y(_065_)
  );
  NAND _349_ (
    .A(A1[7]),
    .B(_110_),
    .Y(_134_)
  );
  NAND _350_ (
    .A(buffer[31]),
    .B(_111_),
    .Y(_135_)
  );
  NAND _351_ (
    .A(_134_),
    .B(_135_),
    .Y(_064_)
  );
  NAND _352_ (
    .A(A1[6]),
    .B(_110_),
    .Y(_136_)
  );
  NAND _353_ (
    .A(buffer[30]),
    .B(_111_),
    .Y(_137_)
  );
  NAND _354_ (
    .A(_136_),
    .B(_137_),
    .Y(_063_)
  );
  NAND _355_ (
    .A(A1[5]),
    .B(_110_),
    .Y(_138_)
  );
  NAND _356_ (
    .A(buffer[29]),
    .B(_111_),
    .Y(_139_)
  );
  NAND _357_ (
    .A(_138_),
    .B(_139_),
    .Y(_062_)
  );
  NAND _358_ (
    .A(A1[4]),
    .B(_110_),
    .Y(_140_)
  );
  NAND _359_ (
    .A(buffer[28]),
    .B(_111_),
    .Y(_141_)
  );
  NAND _360_ (
    .A(_140_),
    .B(_141_),
    .Y(_061_)
  );
  NAND _361_ (
    .A(A1[3]),
    .B(_110_),
    .Y(_142_)
  );
  NAND _362_ (
    .A(buffer[27]),
    .B(_111_),
    .Y(_143_)
  );
  NAND _363_ (
    .A(_142_),
    .B(_143_),
    .Y(_060_)
  );
  NAND _364_ (
    .A(A1[2]),
    .B(_110_),
    .Y(_144_)
  );
  NAND _365_ (
    .A(buffer[26]),
    .B(_111_),
    .Y(_145_)
  );
  NAND _366_ (
    .A(_144_),
    .B(_145_),
    .Y(_059_)
  );
  NAND _367_ (
    .A(A1[1]),
    .B(_110_),
    .Y(_146_)
  );
  NAND _368_ (
    .A(buffer[25]),
    .B(_111_),
    .Y(_147_)
  );
  NAND _369_ (
    .A(_146_),
    .B(_147_),
    .Y(_058_)
  );
  NAND _370_ (
    .A(A1[0]),
    .B(_110_),
    .Y(_148_)
  );
  NAND _371_ (
    .A(buffer[24]),
    .B(_111_),
    .Y(_149_)
  );
  NAND _372_ (
    .A(_148_),
    .B(_149_),
    .Y(_057_)
  );
  NAND _373_ (
    .A(A2[7]),
    .B(_110_),
    .Y(_150_)
  );
  NAND _374_ (
    .A(buffer[23]),
    .B(_111_),
    .Y(_151_)
  );
  NAND _375_ (
    .A(_150_),
    .B(_151_),
    .Y(_056_)
  );
  NAND _376_ (
    .A(A2[6]),
    .B(_110_),
    .Y(_152_)
  );
  NAND _377_ (
    .A(buffer[22]),
    .B(_111_),
    .Y(_153_)
  );
  NAND _378_ (
    .A(_152_),
    .B(_153_),
    .Y(_055_)
  );
  NAND _379_ (
    .A(A2[5]),
    .B(_110_),
    .Y(_154_)
  );
  NAND _380_ (
    .A(buffer[21]),
    .B(_111_),
    .Y(_155_)
  );
  NAND _381_ (
    .A(_154_),
    .B(_155_),
    .Y(_054_)
  );
  NAND _382_ (
    .A(A2[4]),
    .B(_110_),
    .Y(_156_)
  );
  NAND _383_ (
    .A(buffer[20]),
    .B(_111_),
    .Y(_157_)
  );
  NAND _384_ (
    .A(_156_),
    .B(_157_),
    .Y(_053_)
  );
  NAND _385_ (
    .A(A2[3]),
    .B(_110_),
    .Y(_158_)
  );
  NAND _386_ (
    .A(buffer[19]),
    .B(_111_),
    .Y(_159_)
  );
  NAND _387_ (
    .A(_158_),
    .B(_159_),
    .Y(_052_)
  );
  NAND _388_ (
    .A(A2[2]),
    .B(_110_),
    .Y(_160_)
  );
  NAND _389_ (
    .A(buffer[18]),
    .B(_111_),
    .Y(_161_)
  );
  NAND _390_ (
    .A(_160_),
    .B(_161_),
    .Y(_051_)
  );
  NAND _391_ (
    .A(A2[1]),
    .B(_110_),
    .Y(_162_)
  );
  NAND _392_ (
    .A(buffer[17]),
    .B(_111_),
    .Y(_163_)
  );
  NAND _393_ (
    .A(_162_),
    .B(_163_),
    .Y(_050_)
  );
  NAND _394_ (
    .A(A2[0]),
    .B(_110_),
    .Y(_164_)
  );
  NAND _395_ (
    .A(buffer[16]),
    .B(_111_),
    .Y(_165_)
  );
  NAND _396_ (
    .A(_164_),
    .B(_165_),
    .Y(_049_)
  );
  NAND _397_ (
    .A(A3[7]),
    .B(_110_),
    .Y(_166_)
  );
  NAND _398_ (
    .A(buffer[15]),
    .B(_111_),
    .Y(_167_)
  );
  NAND _399_ (
    .A(_166_),
    .B(_167_),
    .Y(_048_)
  );
  NAND _400_ (
    .A(A3[6]),
    .B(_110_),
    .Y(_168_)
  );
  NAND _401_ (
    .A(buffer[14]),
    .B(_111_),
    .Y(_169_)
  );
  NAND _402_ (
    .A(_168_),
    .B(_169_),
    .Y(_047_)
  );
  NAND _403_ (
    .A(A3[5]),
    .B(_110_),
    .Y(_170_)
  );
  NAND _404_ (
    .A(buffer[13]),
    .B(_111_),
    .Y(_171_)
  );
  NAND _405_ (
    .A(_170_),
    .B(_171_),
    .Y(_046_)
  );
  NAND _406_ (
    .A(A3[4]),
    .B(_110_),
    .Y(_172_)
  );
  NAND _407_ (
    .A(buffer[12]),
    .B(_111_),
    .Y(_173_)
  );
  NAND _408_ (
    .A(_172_),
    .B(_173_),
    .Y(_045_)
  );
  NAND _409_ (
    .A(A3[3]),
    .B(_110_),
    .Y(_174_)
  );
  NAND _410_ (
    .A(buffer[11]),
    .B(_111_),
    .Y(_175_)
  );
  NAND _411_ (
    .A(_174_),
    .B(_175_),
    .Y(_044_)
  );
  NAND _412_ (
    .A(A3[2]),
    .B(_110_),
    .Y(_176_)
  );
  NAND _413_ (
    .A(buffer[10]),
    .B(_111_),
    .Y(_177_)
  );
  NAND _414_ (
    .A(_176_),
    .B(_177_),
    .Y(_043_)
  );
  NAND _415_ (
    .A(A3[1]),
    .B(_110_),
    .Y(_178_)
  );
  NAND _416_ (
    .A(buffer[9]),
    .B(_111_),
    .Y(_179_)
  );
  NAND _417_ (
    .A(_178_),
    .B(_179_),
    .Y(_042_)
  );
  NAND _418_ (
    .A(A3[0]),
    .B(_110_),
    .Y(_180_)
  );
  NAND _419_ (
    .A(buffer[8]),
    .B(_111_),
    .Y(_181_)
  );
  NAND _420_ (
    .A(_180_),
    .B(_181_),
    .Y(_041_)
  );
  NAND _421_ (
    .A(data_in[7]),
    .B(_110_),
    .Y(_182_)
  );
  NAND _422_ (
    .A(buffer[7]),
    .B(_111_),
    .Y(_183_)
  );
  NAND _423_ (
    .A(_182_),
    .B(_183_),
    .Y(_040_)
  );
  NAND _424_ (
    .A(data_in[6]),
    .B(_110_),
    .Y(_184_)
  );
  NAND _425_ (
    .A(buffer[6]),
    .B(_111_),
    .Y(_185_)
  );
  NAND _426_ (
    .A(_184_),
    .B(_185_),
    .Y(_039_)
  );
  NAND _427_ (
    .A(data_in[5]),
    .B(_110_),
    .Y(_186_)
  );
  NAND _428_ (
    .A(buffer[5]),
    .B(_111_),
    .Y(_187_)
  );
  NAND _429_ (
    .A(_186_),
    .B(_187_),
    .Y(_038_)
  );
  NAND _430_ (
    .A(data_in[4]),
    .B(_110_),
    .Y(_188_)
  );
  NAND _431_ (
    .A(buffer[4]),
    .B(_111_),
    .Y(_189_)
  );
  NAND _432_ (
    .A(_188_),
    .B(_189_),
    .Y(_037_)
  );
  NAND _433_ (
    .A(data_in[3]),
    .B(_110_),
    .Y(_190_)
  );
  NAND _434_ (
    .A(buffer[3]),
    .B(_111_),
    .Y(_191_)
  );
  NAND _435_ (
    .A(_190_),
    .B(_191_),
    .Y(_036_)
  );
  NAND _436_ (
    .A(data_in[2]),
    .B(_110_),
    .Y(_192_)
  );
  NAND _437_ (
    .A(buffer[2]),
    .B(_111_),
    .Y(_193_)
  );
  NAND _438_ (
    .A(_192_),
    .B(_193_),
    .Y(_035_)
  );
  NAND _439_ (
    .A(data_in[1]),
    .B(_110_),
    .Y(_194_)
  );
  NAND _440_ (
    .A(buffer[1]),
    .B(_111_),
    .Y(_195_)
  );
  NAND _441_ (
    .A(_194_),
    .B(_195_),
    .Y(_034_)
  );
  NAND _442_ (
    .A(data_in[0]),
    .B(_110_),
    .Y(_196_)
  );
  NAND _443_ (
    .A(buffer[0]),
    .B(_111_),
    .Y(_197_)
  );
  NAND _444_ (
    .A(_196_),
    .B(_197_),
    .Y(_033_)
  );
  NAND _445_ (
    .A(data_in[7]),
    .B(_103_),
    .Y(_198_)
  );
  NAND _446_ (
    .A(A3[7]),
    .B(_104_),
    .Y(_199_)
  );
  NAND _447_ (
    .A(_198_),
    .B(_199_),
    .Y(_032_)
  );
  NAND _448_ (
    .A(data_in[6]),
    .B(_103_),
    .Y(_200_)
  );
  NAND _449_ (
    .A(A3[6]),
    .B(_104_),
    .Y(_201_)
  );
  NAND _450_ (
    .A(_200_),
    .B(_201_),
    .Y(_031_)
  );
  NAND _451_ (
    .A(data_in[5]),
    .B(_103_),
    .Y(_202_)
  );
  NAND _452_ (
    .A(A3[5]),
    .B(_104_),
    .Y(_203_)
  );
  NAND _453_ (
    .A(_202_),
    .B(_203_),
    .Y(_030_)
  );
  NAND _454_ (
    .A(data_in[4]),
    .B(_103_),
    .Y(_204_)
  );
  NAND _455_ (
    .A(A3[4]),
    .B(_104_),
    .Y(_205_)
  );
  NAND _456_ (
    .A(_204_),
    .B(_205_),
    .Y(_029_)
  );
  NAND _457_ (
    .A(data_in[3]),
    .B(_103_),
    .Y(_206_)
  );
  NAND _458_ (
    .A(A3[3]),
    .B(_104_),
    .Y(_207_)
  );
  NAND _459_ (
    .A(_206_),
    .B(_207_),
    .Y(_028_)
  );
  NAND _460_ (
    .A(data_in[2]),
    .B(_103_),
    .Y(_208_)
  );
  NAND _461_ (
    .A(A3[2]),
    .B(_104_),
    .Y(_209_)
  );
  NAND _462_ (
    .A(_208_),
    .B(_209_),
    .Y(_027_)
  );
  NAND _463_ (
    .A(data_in[1]),
    .B(_103_),
    .Y(_210_)
  );
  NAND _464_ (
    .A(A3[1]),
    .B(_104_),
    .Y(_211_)
  );
  NAND _465_ (
    .A(_210_),
    .B(_211_),
    .Y(_026_)
  );
  NAND _466_ (
    .A(data_in[0]),
    .B(_103_),
    .Y(_212_)
  );
  NAND _467_ (
    .A(A3[0]),
    .B(_104_),
    .Y(_213_)
  );
  NAND _468_ (
    .A(_212_),
    .B(_213_),
    .Y(_025_)
  );
  NOR _469_ (
    .A(_096_),
    .B(counter[2]),
    .Y(_214_)
  );
  NAND _470_ (
    .A(_109_),
    .B(_214_),
    .Y(_215_)
  );
  NAND _471_ (
    .A(_111_),
    .B(_215_),
    .Y(_024_)
  );
  NAND _472_ (
    .A(buffer[31]),
    .B(flag),
    .Y(_216_)
  );
  NAND _473_ (
    .A(_096_),
    .B(data_out[31]),
    .Y(_217_)
  );
  NAND _474_ (
    .A(_216_),
    .B(_217_),
    .Y(_023_)
  );
  NAND _475_ (
    .A(buffer[30]),
    .B(flag),
    .Y(_218_)
  );
  NAND _476_ (
    .A(_096_),
    .B(data_out[30]),
    .Y(_219_)
  );
  NAND _477_ (
    .A(_218_),
    .B(_219_),
    .Y(_022_)
  );
  NAND _478_ (
    .A(buffer[29]),
    .B(flag),
    .Y(_220_)
  );
  NAND _479_ (
    .A(_096_),
    .B(data_out[29]),
    .Y(_221_)
  );
  NAND _480_ (
    .A(_220_),
    .B(_221_),
    .Y(_021_)
  );
  NAND _481_ (
    .A(buffer[28]),
    .B(flag),
    .Y(_222_)
  );
  NAND _482_ (
    .A(_096_),
    .B(data_out[28]),
    .Y(_223_)
  );
  NAND _483_ (
    .A(_222_),
    .B(_223_),
    .Y(_020_)
  );
  NAND _484_ (
    .A(buffer[27]),
    .B(flag),
    .Y(_224_)
  );
  NAND _485_ (
    .A(_096_),
    .B(data_out[27]),
    .Y(_225_)
  );
  NAND _486_ (
    .A(_224_),
    .B(_225_),
    .Y(_019_)
  );
  NAND _487_ (
    .A(buffer[26]),
    .B(flag),
    .Y(_226_)
  );
  NAND _488_ (
    .A(_096_),
    .B(data_out[26]),
    .Y(_227_)
  );
  NAND _489_ (
    .A(_226_),
    .B(_227_),
    .Y(_018_)
  );
  NAND _490_ (
    .A(buffer[25]),
    .B(flag),
    .Y(_228_)
  );
  NAND _491_ (
    .A(_096_),
    .B(data_out[25]),
    .Y(_229_)
  );
  NAND _492_ (
    .A(_228_),
    .B(_229_),
    .Y(_017_)
  );
  NAND _493_ (
    .A(buffer[24]),
    .B(flag),
    .Y(_230_)
  );
  NAND _494_ (
    .A(_096_),
    .B(data_out[24]),
    .Y(_231_)
  );
  NAND _495_ (
    .A(_230_),
    .B(_231_),
    .Y(_016_)
  );
  NAND _496_ (
    .A(buffer[23]),
    .B(flag),
    .Y(_232_)
  );
  NAND _497_ (
    .A(_096_),
    .B(data_out[23]),
    .Y(_233_)
  );
  NAND _498_ (
    .A(_232_),
    .B(_233_),
    .Y(_015_)
  );
  NAND _499_ (
    .A(buffer[22]),
    .B(flag),
    .Y(_234_)
  );
  NAND _500_ (
    .A(_096_),
    .B(data_out[22]),
    .Y(_235_)
  );
  NAND _501_ (
    .A(_234_),
    .B(_235_),
    .Y(_014_)
  );
  NAND _502_ (
    .A(buffer[21]),
    .B(flag),
    .Y(_236_)
  );
  NAND _503_ (
    .A(_096_),
    .B(data_out[21]),
    .Y(_237_)
  );
  NAND _504_ (
    .A(_236_),
    .B(_237_),
    .Y(_013_)
  );
  NAND _505_ (
    .A(buffer[20]),
    .B(flag),
    .Y(_238_)
  );
  NAND _506_ (
    .A(_096_),
    .B(data_out[20]),
    .Y(_239_)
  );
  NAND _507_ (
    .A(_238_),
    .B(_239_),
    .Y(_012_)
  );
  NAND _508_ (
    .A(buffer[19]),
    .B(flag),
    .Y(_240_)
  );
  NAND _509_ (
    .A(_096_),
    .B(data_out[19]),
    .Y(_241_)
  );
  NAND _510_ (
    .A(_240_),
    .B(_241_),
    .Y(_011_)
  );
  NAND _511_ (
    .A(buffer[18]),
    .B(flag),
    .Y(_242_)
  );
  NAND _512_ (
    .A(_096_),
    .B(data_out[18]),
    .Y(_243_)
  );
  NAND _513_ (
    .A(_242_),
    .B(_243_),
    .Y(_010_)
  );
  NAND _514_ (
    .A(buffer[17]),
    .B(flag),
    .Y(_244_)
  );
  NAND _515_ (
    .A(_096_),
    .B(data_out[17]),
    .Y(_245_)
  );
  NAND _516_ (
    .A(_244_),
    .B(_245_),
    .Y(_009_)
  );
  NAND _517_ (
    .A(buffer[16]),
    .B(flag),
    .Y(_246_)
  );
  NAND _518_ (
    .A(_096_),
    .B(data_out[16]),
    .Y(_247_)
  );
  NAND _519_ (
    .A(_246_),
    .B(_247_),
    .Y(_008_)
  );
  NAND _520_ (
    .A(buffer[15]),
    .B(flag),
    .Y(_248_)
  );
  NAND _521_ (
    .A(_096_),
    .B(data_out[15]),
    .Y(_249_)
  );
  NAND _522_ (
    .A(_248_),
    .B(_249_),
    .Y(_007_)
  );
  NAND _523_ (
    .A(buffer[14]),
    .B(flag),
    .Y(_250_)
  );
  NAND _524_ (
    .A(_096_),
    .B(data_out[14]),
    .Y(_251_)
  );
  NAND _525_ (
    .A(_250_),
    .B(_251_),
    .Y(_006_)
  );
  NAND _526_ (
    .A(buffer[13]),
    .B(flag),
    .Y(_252_)
  );
  NAND _527_ (
    .A(_096_),
    .B(data_out[13]),
    .Y(_253_)
  );
  NAND _528_ (
    .A(_252_),
    .B(_253_),
    .Y(_005_)
  );
  NAND _529_ (
    .A(buffer[12]),
    .B(flag),
    .Y(_254_)
  );
  NAND _530_ (
    .A(_096_),
    .B(data_out[12]),
    .Y(_255_)
  );
  NAND _531_ (
    .A(_254_),
    .B(_255_),
    .Y(_004_)
  );
  NAND _532_ (
    .A(buffer[11]),
    .B(flag),
    .Y(_256_)
  );
  NAND _533_ (
    .A(_096_),
    .B(data_out[11]),
    .Y(_257_)
  );
  NAND _534_ (
    .A(_256_),
    .B(_257_),
    .Y(_003_)
  );
  NAND _535_ (
    .A(buffer[10]),
    .B(flag),
    .Y(_258_)
  );
  NAND _536_ (
    .A(_096_),
    .B(data_out[10]),
    .Y(_259_)
  );
  NAND _537_ (
    .A(_258_),
    .B(_259_),
    .Y(_094_)
  );
  NAND _538_ (
    .A(buffer[9]),
    .B(flag),
    .Y(_260_)
  );
  NAND _539_ (
    .A(_096_),
    .B(data_out[9]),
    .Y(_261_)
  );
  NAND _540_ (
    .A(_260_),
    .B(_261_),
    .Y(_093_)
  );
  NAND _541_ (
    .A(buffer[8]),
    .B(flag),
    .Y(_262_)
  );
  NAND _542_ (
    .A(_096_),
    .B(data_out[8]),
    .Y(_263_)
  );
  NAND _543_ (
    .A(_262_),
    .B(_263_),
    .Y(_092_)
  );
  NAND _544_ (
    .A(buffer[7]),
    .B(flag),
    .Y(_264_)
  );
  NAND _545_ (
    .A(_096_),
    .B(data_out[7]),
    .Y(_265_)
  );
  NAND _546_ (
    .A(_264_),
    .B(_265_),
    .Y(_091_)
  );
  NAND _547_ (
    .A(buffer[6]),
    .B(flag),
    .Y(_266_)
  );
  NAND _548_ (
    .A(_096_),
    .B(data_out[6]),
    .Y(_267_)
  );
  NAND _549_ (
    .A(_266_),
    .B(_267_),
    .Y(_090_)
  );
  NAND _550_ (
    .A(buffer[5]),
    .B(flag),
    .Y(_268_)
  );
  NAND _551_ (
    .A(_096_),
    .B(data_out[5]),
    .Y(_269_)
  );
  NAND _552_ (
    .A(_268_),
    .B(_269_),
    .Y(_089_)
  );
  NAND _553_ (
    .A(buffer[4]),
    .B(flag),
    .Y(_270_)
  );
  NAND _554_ (
    .A(_096_),
    .B(data_out[4]),
    .Y(_271_)
  );
  NAND _555_ (
    .A(_270_),
    .B(_271_),
    .Y(_088_)
  );
  NAND _556_ (
    .A(buffer[3]),
    .B(flag),
    .Y(_272_)
  );
  NAND _557_ (
    .A(_096_),
    .B(data_out[3]),
    .Y(_273_)
  );
  NAND _558_ (
    .A(_272_),
    .B(_273_),
    .Y(_087_)
  );
  NAND _559_ (
    .A(buffer[2]),
    .B(flag),
    .Y(_274_)
  );
  NAND _560_ (
    .A(_096_),
    .B(data_out[2]),
    .Y(_275_)
  );
  NAND _561_ (
    .A(_274_),
    .B(_275_),
    .Y(_086_)
  );
  NAND _562_ (
    .A(buffer[1]),
    .B(flag),
    .Y(_276_)
  );
  NAND _563_ (
    .A(_096_),
    .B(data_out[1]),
    .Y(_277_)
  );
  NAND _564_ (
    .A(_276_),
    .B(_277_),
    .Y(_085_)
  );
  NAND _565_ (
    .A(buffer[0]),
    .B(flag),
    .Y(_278_)
  );
  NAND _566_ (
    .A(_096_),
    .B(data_out[0]),
    .Y(_279_)
  );
  NAND _567_ (
    .A(_278_),
    .B(_279_),
    .Y(_084_)
  );
  NOR _568_ (
    .A(counter[1]),
    .B(_102_),
    .Y(_280_)
  );
  NAND _569_ (
    .A(_099_),
    .B(_101_),
    .Y(_281_)
  );
  NAND _570_ (
    .A(data_in[7]),
    .B(_280_),
    .Y(_282_)
  );
  NAND _571_ (
    .A(A1[7]),
    .B(_281_),
    .Y(_283_)
  );
  NAND _572_ (
    .A(_282_),
    .B(_283_),
    .Y(_083_)
  );
  NAND _573_ (
    .A(data_in[6]),
    .B(_280_),
    .Y(_284_)
  );
  NAND _574_ (
    .A(A1[6]),
    .B(_281_),
    .Y(_285_)
  );
  NAND _575_ (
    .A(_284_),
    .B(_285_),
    .Y(_082_)
  );
  NAND _576_ (
    .A(data_in[5]),
    .B(_280_),
    .Y(_286_)
  );
  NAND _577_ (
    .A(A1[5]),
    .B(_281_),
    .Y(_287_)
  );
  NAND _578_ (
    .A(_286_),
    .B(_287_),
    .Y(_081_)
  );
  NAND _579_ (
    .A(data_in[4]),
    .B(_280_),
    .Y(_288_)
  );
  NAND _580_ (
    .A(A1[4]),
    .B(_281_),
    .Y(_289_)
  );
  NAND _581_ (
    .A(_288_),
    .B(_289_),
    .Y(_080_)
  );
  NAND _582_ (
    .A(data_in[3]),
    .B(_280_),
    .Y(_290_)
  );
  NAND _583_ (
    .A(A1[3]),
    .B(_281_),
    .Y(_291_)
  );
  NAND _584_ (
    .A(_290_),
    .B(_291_),
    .Y(_079_)
  );
  NAND _585_ (
    .A(data_in[2]),
    .B(_280_),
    .Y(_292_)
  );
  NAND _586_ (
    .A(A1[2]),
    .B(_281_),
    .Y(_293_)
  );
  NAND _587_ (
    .A(_292_),
    .B(_293_),
    .Y(_078_)
  );
  NAND _588_ (
    .A(data_in[1]),
    .B(_280_),
    .Y(_294_)
  );
  NAND _589_ (
    .A(A1[1]),
    .B(_281_),
    .Y(_295_)
  );
  NAND _590_ (
    .A(_294_),
    .B(_295_),
    .Y(_077_)
  );
  NAND _591_ (
    .A(data_in[0]),
    .B(_280_),
    .Y(_296_)
  );
  NAND _592_ (
    .A(A1[0]),
    .B(_281_),
    .Y(_297_)
  );
  NAND _593_ (
    .A(_296_),
    .B(_297_),
    .Y(_076_)
  );
  NOT _594_ (
    .A(clk_4f),
    .Y(_000_)
  );
  NOT _595_ (
    .A(clk_4f),
    .Y(_002_)
  );
  (* src = "Mux8_32_synth.v:66.1-75.4" *)
  DFF _596_ (
    .C(clk_f),
    .D(flag),
    .Q(valid_out)
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _597_ (
    .C(clk_4f),
    .D(_076_),
    .Q(A1[0])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _598_ (
    .C(clk_4f),
    .D(_077_),
    .Q(A1[1])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _599_ (
    .C(clk_4f),
    .D(_078_),
    .Q(A1[2])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _600_ (
    .C(clk_4f),
    .D(_079_),
    .Q(A1[3])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _601_ (
    .C(clk_4f),
    .D(_080_),
    .Q(A1[4])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _602_ (
    .C(clk_4f),
    .D(_081_),
    .Q(A1[5])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _603_ (
    .C(clk_4f),
    .D(_082_),
    .Q(A1[6])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _604_ (
    .C(clk_4f),
    .D(_083_),
    .Q(A1[7])
  );
  (* src = "Mux8_32_synth.v:66.1-75.4" *)
  DFF _605_ (
    .C(clk_f),
    .D(_084_),
    .Q(data_out[0])
  );
  (* src = "Mux8_32_synth.v:66.1-75.4" *)
  DFF _606_ (
    .C(clk_f),
    .D(_085_),
    .Q(data_out[1])
  );
  (* src = "Mux8_32_synth.v:66.1-75.4" *)
  DFF _607_ (
    .C(clk_f),
    .D(_086_),
    .Q(data_out[2])
  );
  (* src = "Mux8_32_synth.v:66.1-75.4" *)
  DFF _608_ (
    .C(clk_f),
    .D(_087_),
    .Q(data_out[3])
  );
  (* src = "Mux8_32_synth.v:66.1-75.4" *)
  DFF _609_ (
    .C(clk_f),
    .D(_088_),
    .Q(data_out[4])
  );
  (* src = "Mux8_32_synth.v:66.1-75.4" *)
  DFF _610_ (
    .C(clk_f),
    .D(_089_),
    .Q(data_out[5])
  );
  (* src = "Mux8_32_synth.v:66.1-75.4" *)
  DFF _611_ (
    .C(clk_f),
    .D(_090_),
    .Q(data_out[6])
  );
  (* src = "Mux8_32_synth.v:66.1-75.4" *)
  DFF _612_ (
    .C(clk_f),
    .D(_091_),
    .Q(data_out[7])
  );
  (* src = "Mux8_32_synth.v:66.1-75.4" *)
  DFF _613_ (
    .C(clk_f),
    .D(_092_),
    .Q(data_out[8])
  );
  (* src = "Mux8_32_synth.v:66.1-75.4" *)
  DFF _614_ (
    .C(clk_f),
    .D(_093_),
    .Q(data_out[9])
  );
  (* src = "Mux8_32_synth.v:66.1-75.4" *)
  DFF _615_ (
    .C(clk_f),
    .D(_094_),
    .Q(data_out[10])
  );
  (* src = "Mux8_32_synth.v:66.1-75.4" *)
  DFF _616_ (
    .C(clk_f),
    .D(_003_),
    .Q(data_out[11])
  );
  (* src = "Mux8_32_synth.v:66.1-75.4" *)
  DFF _617_ (
    .C(clk_f),
    .D(_004_),
    .Q(data_out[12])
  );
  (* src = "Mux8_32_synth.v:66.1-75.4" *)
  DFF _618_ (
    .C(clk_f),
    .D(_005_),
    .Q(data_out[13])
  );
  (* src = "Mux8_32_synth.v:66.1-75.4" *)
  DFF _619_ (
    .C(clk_f),
    .D(_006_),
    .Q(data_out[14])
  );
  (* src = "Mux8_32_synth.v:66.1-75.4" *)
  DFF _620_ (
    .C(clk_f),
    .D(_007_),
    .Q(data_out[15])
  );
  (* src = "Mux8_32_synth.v:66.1-75.4" *)
  DFF _621_ (
    .C(clk_f),
    .D(_008_),
    .Q(data_out[16])
  );
  (* src = "Mux8_32_synth.v:66.1-75.4" *)
  DFF _622_ (
    .C(clk_f),
    .D(_009_),
    .Q(data_out[17])
  );
  (* src = "Mux8_32_synth.v:66.1-75.4" *)
  DFF _623_ (
    .C(clk_f),
    .D(_010_),
    .Q(data_out[18])
  );
  (* src = "Mux8_32_synth.v:66.1-75.4" *)
  DFF _624_ (
    .C(clk_f),
    .D(_011_),
    .Q(data_out[19])
  );
  (* src = "Mux8_32_synth.v:66.1-75.4" *)
  DFF _625_ (
    .C(clk_f),
    .D(_012_),
    .Q(data_out[20])
  );
  (* src = "Mux8_32_synth.v:66.1-75.4" *)
  DFF _626_ (
    .C(clk_f),
    .D(_013_),
    .Q(data_out[21])
  );
  (* src = "Mux8_32_synth.v:66.1-75.4" *)
  DFF _627_ (
    .C(clk_f),
    .D(_014_),
    .Q(data_out[22])
  );
  (* src = "Mux8_32_synth.v:66.1-75.4" *)
  DFF _628_ (
    .C(clk_f),
    .D(_015_),
    .Q(data_out[23])
  );
  (* src = "Mux8_32_synth.v:66.1-75.4" *)
  DFF _629_ (
    .C(clk_f),
    .D(_016_),
    .Q(data_out[24])
  );
  (* src = "Mux8_32_synth.v:66.1-75.4" *)
  DFF _630_ (
    .C(clk_f),
    .D(_017_),
    .Q(data_out[25])
  );
  (* src = "Mux8_32_synth.v:66.1-75.4" *)
  DFF _631_ (
    .C(clk_f),
    .D(_018_),
    .Q(data_out[26])
  );
  (* src = "Mux8_32_synth.v:66.1-75.4" *)
  DFF _632_ (
    .C(clk_f),
    .D(_019_),
    .Q(data_out[27])
  );
  (* src = "Mux8_32_synth.v:66.1-75.4" *)
  DFF _633_ (
    .C(clk_f),
    .D(_020_),
    .Q(data_out[28])
  );
  (* src = "Mux8_32_synth.v:66.1-75.4" *)
  DFF _634_ (
    .C(clk_f),
    .D(_021_),
    .Q(data_out[29])
  );
  (* src = "Mux8_32_synth.v:66.1-75.4" *)
  DFF _635_ (
    .C(clk_f),
    .D(_022_),
    .Q(data_out[30])
  );
  (* src = "Mux8_32_synth.v:66.1-75.4" *)
  DFF _636_ (
    .C(clk_f),
    .D(_023_),
    .Q(data_out[31])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _637_ (
    .C(clk_4f),
    .D(_024_),
    .Q(flag)
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _638_ (
    .C(clk_4f),
    .D(_025_),
    .Q(A3[0])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _639_ (
    .C(clk_4f),
    .D(_026_),
    .Q(A3[1])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _640_ (
    .C(clk_4f),
    .D(_027_),
    .Q(A3[2])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _641_ (
    .C(clk_4f),
    .D(_028_),
    .Q(A3[3])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _642_ (
    .C(clk_4f),
    .D(_029_),
    .Q(A3[4])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _643_ (
    .C(clk_4f),
    .D(_030_),
    .Q(A3[5])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _644_ (
    .C(clk_4f),
    .D(_031_),
    .Q(A3[6])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _645_ (
    .C(clk_4f),
    .D(_032_),
    .Q(A3[7])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _646_ (
    .C(clk_4f),
    .D(_033_),
    .Q(buffer[0])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _647_ (
    .C(clk_4f),
    .D(_034_),
    .Q(buffer[1])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _648_ (
    .C(clk_4f),
    .D(_035_),
    .Q(buffer[2])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _649_ (
    .C(clk_4f),
    .D(_036_),
    .Q(buffer[3])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _650_ (
    .C(clk_4f),
    .D(_037_),
    .Q(buffer[4])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _651_ (
    .C(clk_4f),
    .D(_038_),
    .Q(buffer[5])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _652_ (
    .C(clk_4f),
    .D(_039_),
    .Q(buffer[6])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _653_ (
    .C(clk_4f),
    .D(_040_),
    .Q(buffer[7])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _654_ (
    .C(clk_4f),
    .D(_041_),
    .Q(buffer[8])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _655_ (
    .C(clk_4f),
    .D(_042_),
    .Q(buffer[9])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _656_ (
    .C(clk_4f),
    .D(_043_),
    .Q(buffer[10])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _657_ (
    .C(clk_4f),
    .D(_044_),
    .Q(buffer[11])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _658_ (
    .C(clk_4f),
    .D(_045_),
    .Q(buffer[12])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _659_ (
    .C(clk_4f),
    .D(_046_),
    .Q(buffer[13])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _660_ (
    .C(clk_4f),
    .D(_047_),
    .Q(buffer[14])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _661_ (
    .C(clk_4f),
    .D(_048_),
    .Q(buffer[15])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _662_ (
    .C(clk_4f),
    .D(_049_),
    .Q(buffer[16])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _663_ (
    .C(clk_4f),
    .D(_050_),
    .Q(buffer[17])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _664_ (
    .C(clk_4f),
    .D(_051_),
    .Q(buffer[18])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _665_ (
    .C(clk_4f),
    .D(_052_),
    .Q(buffer[19])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _666_ (
    .C(clk_4f),
    .D(_053_),
    .Q(buffer[20])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _667_ (
    .C(clk_4f),
    .D(_054_),
    .Q(buffer[21])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _668_ (
    .C(clk_4f),
    .D(_055_),
    .Q(buffer[22])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _669_ (
    .C(clk_4f),
    .D(_056_),
    .Q(buffer[23])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _670_ (
    .C(clk_4f),
    .D(_057_),
    .Q(buffer[24])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _671_ (
    .C(clk_4f),
    .D(_058_),
    .Q(buffer[25])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _672_ (
    .C(clk_4f),
    .D(_059_),
    .Q(buffer[26])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _673_ (
    .C(clk_4f),
    .D(_060_),
    .Q(buffer[27])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _674_ (
    .C(clk_4f),
    .D(_061_),
    .Q(buffer[28])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _675_ (
    .C(clk_4f),
    .D(_062_),
    .Q(buffer[29])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _676_ (
    .C(clk_4f),
    .D(_063_),
    .Q(buffer[30])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _677_ (
    .C(clk_4f),
    .D(_064_),
    .Q(buffer[31])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _678_ (
    .C(clk_4f),
    .D(_065_),
    .Q(A2[0])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _679_ (
    .C(clk_4f),
    .D(_066_),
    .Q(A2[1])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _680_ (
    .C(clk_4f),
    .D(_067_),
    .Q(A2[2])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _681_ (
    .C(clk_4f),
    .D(_068_),
    .Q(A2[3])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _682_ (
    .C(clk_4f),
    .D(_069_),
    .Q(A2[4])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _683_ (
    .C(clk_4f),
    .D(_070_),
    .Q(A2[5])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _684_ (
    .C(clk_4f),
    .D(_071_),
    .Q(A2[6])
  );
  (* src = "Mux8_32_synth.v:41.1-64.4" *)
  DFF _685_ (
    .C(clk_4f),
    .D(_072_),
    .Q(A2[7])
  );
  (* src = "Mux8_32_synth.v:18.1-28.4" *)
  DFF _686_ (
    .C(_000_),
    .D(_073_),
    .Q(counter[1])
  );
  (* src = "Mux8_32_synth.v:18.1-28.4" *)
  DFF _687_ (
    .C(_001_),
    .D(_074_),
    .Q(counter[2])
  );
  (* src = "Mux8_32_synth.v:18.1-28.4" *)
  DFF _688_ (
    .C(_002_),
    .D(_075_),
    .Q(counter[0])
  );
endmodule
