/* Generated by Yosys 0.9+3565 (git sha1 474cd02e, gcc 9.3.0-10ubuntu2 -fPIC -Os) */

(* top =  1  *)
(* src = "Mux8_32_synth.v:1.1-94.10" *)
module Mux8_32_synth(clk_f, clk_4f, data_in, valid_in, data_out, valid_out);
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
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
  (* src = "Mux8_32_synth.v:32.11-32.13" *)
  wire [7:0] A1;
  (* src = "Mux8_32_synth.v:33.11-33.13" *)
  wire [7:0] A2;
  (* src = "Mux8_32_synth.v:34.11-34.13" *)
  wire [7:0] A3;
  (* src = "Mux8_32_synth.v:3.11-3.17" *)
  input clk_4f;
  (* src = "Mux8_32_synth.v:2.11-2.16" *)
  input clk_f;
  (* init = 3'h0 *)
  (* src = "Mux8_32_synth.v:10.11-10.18" *)
  wire [2:0] counter;
  (* init = 3'h0 *)
  (* src = "Mux8_32_synth.v:9.11-9.19" *)
  wire [2:0] counter2;
  (* src = "Mux8_32_synth.v:4.17-4.24" *)
  input [7:0] data_in;
  (* src = "Mux8_32_synth.v:6.23-6.31" *)
  output [31:0] data_out;
  (* src = "Mux8_32_synth.v:5.11-5.19" *)
  input valid_in;
  (* src = "Mux8_32_synth.v:7.16-7.25" *)
  output valid_out;
  NOT _221_ (
    .A(counter2[1]),
    .Y(_066_)
  );
  NOT _222_ (
    .A(counter2[0]),
    .Y(_067_)
  );
  NOT _223_ (
    .A(clk_4f),
    .Y(_003_)
  );
  NOT _224_ (
    .A(valid_in),
    .Y(_068_)
  );
  NOT _225_ (
    .A(counter[2]),
    .Y(_069_)
  );
  NOT _226_ (
    .A(counter[0]),
    .Y(_070_)
  );
  NOT _227_ (
    .A(counter[1]),
    .Y(_071_)
  );
  NOT _228_ (
    .A(counter2[2]),
    .Y(_072_)
  );
  NOR _229_ (
    .A(counter[0]),
    .B(counter[1]),
    .Y(_073_)
  );
  NOT _230_ (
    .A(_073_),
    .Y(_074_)
  );
  NOR _231_ (
    .A(counter[2]),
    .B(_073_),
    .Y(_075_)
  );
  NOT _232_ (
    .A(_075_),
    .Y(_076_)
  );
  NOR _233_ (
    .A(_067_),
    .B(_075_),
    .Y(_077_)
  );
  NAND _234_ (
    .A(counter2[0]),
    .B(_076_),
    .Y(_078_)
  );
  NAND _235_ (
    .A(counter2[1]),
    .B(_077_),
    .Y(_079_)
  );
  NOT _236_ (
    .A(_079_),
    .Y(_080_)
  );
  NOR _237_ (
    .A(_069_),
    .B(_074_),
    .Y(_081_)
  );
  NAND _238_ (
    .A(counter[2]),
    .B(_073_),
    .Y(_082_)
  );
  NAND _239_ (
    .A(_066_),
    .B(_078_),
    .Y(_083_)
  );
  NAND _240_ (
    .A(_082_),
    .B(_083_),
    .Y(_084_)
  );
  NOR _241_ (
    .A(_080_),
    .B(_084_),
    .Y(_064_)
  );
  NAND _242_ (
    .A(_067_),
    .B(_075_),
    .Y(_085_)
  );
  NAND _243_ (
    .A(_078_),
    .B(_085_),
    .Y(_086_)
  );
  NAND _244_ (
    .A(_082_),
    .B(_086_),
    .Y(_063_)
  );
  NOR _245_ (
    .A(_068_),
    .B(counter[0]),
    .Y(_062_)
  );
  NAND _246_ (
    .A(counter[0]),
    .B(counter[1]),
    .Y(_087_)
  );
  NOR _247_ (
    .A(counter[2]),
    .B(_070_),
    .Y(_088_)
  );
  NOT _248_ (
    .A(_088_),
    .Y(_089_)
  );
  NOR _249_ (
    .A(counter[2]),
    .B(_087_),
    .Y(_090_)
  );
  NAND _250_ (
    .A(counter[1]),
    .B(_088_),
    .Y(_091_)
  );
  NAND _251_ (
    .A(counter[2]),
    .B(_087_),
    .Y(_092_)
  );
  NAND _252_ (
    .A(_091_),
    .B(_092_),
    .Y(_093_)
  );
  NAND _253_ (
    .A(valid_in),
    .B(_093_),
    .Y(_094_)
  );
  NOR _254_ (
    .A(_081_),
    .B(_094_),
    .Y(_061_)
  );
  NAND _255_ (
    .A(valid_in),
    .B(_087_),
    .Y(_095_)
  );
  NOR _256_ (
    .A(_073_),
    .B(_095_),
    .Y(_060_)
  );
  NAND _257_ (
    .A(A1[7]),
    .B(_081_),
    .Y(_096_)
  );
  NAND _258_ (
    .A(data_out[31]),
    .B(_082_),
    .Y(_097_)
  );
  NAND _259_ (
    .A(_096_),
    .B(_097_),
    .Y(_059_)
  );
  NAND _260_ (
    .A(A1[6]),
    .B(_081_),
    .Y(_098_)
  );
  NAND _261_ (
    .A(data_out[30]),
    .B(_082_),
    .Y(_099_)
  );
  NAND _262_ (
    .A(_098_),
    .B(_099_),
    .Y(_058_)
  );
  NAND _263_ (
    .A(A1[5]),
    .B(_081_),
    .Y(_100_)
  );
  NAND _264_ (
    .A(data_out[29]),
    .B(_082_),
    .Y(_101_)
  );
  NAND _265_ (
    .A(_100_),
    .B(_101_),
    .Y(_057_)
  );
  NAND _266_ (
    .A(A1[4]),
    .B(_081_),
    .Y(_102_)
  );
  NAND _267_ (
    .A(data_out[28]),
    .B(_082_),
    .Y(_103_)
  );
  NAND _268_ (
    .A(_102_),
    .B(_103_),
    .Y(_056_)
  );
  NAND _269_ (
    .A(A1[3]),
    .B(_081_),
    .Y(_104_)
  );
  NAND _270_ (
    .A(data_out[27]),
    .B(_082_),
    .Y(_105_)
  );
  NAND _271_ (
    .A(_104_),
    .B(_105_),
    .Y(_055_)
  );
  NAND _272_ (
    .A(A1[2]),
    .B(_081_),
    .Y(_106_)
  );
  NAND _273_ (
    .A(data_out[26]),
    .B(_082_),
    .Y(_107_)
  );
  NAND _274_ (
    .A(_106_),
    .B(_107_),
    .Y(_054_)
  );
  NAND _275_ (
    .A(A1[1]),
    .B(_081_),
    .Y(_108_)
  );
  NAND _276_ (
    .A(data_out[25]),
    .B(_082_),
    .Y(_109_)
  );
  NAND _277_ (
    .A(_108_),
    .B(_109_),
    .Y(_053_)
  );
  NAND _278_ (
    .A(A1[0]),
    .B(_081_),
    .Y(_110_)
  );
  NAND _279_ (
    .A(data_out[24]),
    .B(_082_),
    .Y(_111_)
  );
  NAND _280_ (
    .A(_110_),
    .B(_111_),
    .Y(_052_)
  );
  NAND _281_ (
    .A(A2[7]),
    .B(_081_),
    .Y(_112_)
  );
  NAND _282_ (
    .A(data_out[23]),
    .B(_082_),
    .Y(_113_)
  );
  NAND _283_ (
    .A(_112_),
    .B(_113_),
    .Y(_051_)
  );
  NAND _284_ (
    .A(A2[6]),
    .B(_081_),
    .Y(_114_)
  );
  NAND _285_ (
    .A(data_out[22]),
    .B(_082_),
    .Y(_115_)
  );
  NAND _286_ (
    .A(_114_),
    .B(_115_),
    .Y(_050_)
  );
  NAND _287_ (
    .A(A2[5]),
    .B(_081_),
    .Y(_116_)
  );
  NAND _288_ (
    .A(data_out[21]),
    .B(_082_),
    .Y(_117_)
  );
  NAND _289_ (
    .A(_116_),
    .B(_117_),
    .Y(_049_)
  );
  NAND _290_ (
    .A(A2[4]),
    .B(_081_),
    .Y(_118_)
  );
  NAND _291_ (
    .A(data_out[20]),
    .B(_082_),
    .Y(_119_)
  );
  NAND _292_ (
    .A(_118_),
    .B(_119_),
    .Y(_048_)
  );
  NAND _293_ (
    .A(A2[3]),
    .B(_081_),
    .Y(_120_)
  );
  NAND _294_ (
    .A(data_out[19]),
    .B(_082_),
    .Y(_121_)
  );
  NAND _295_ (
    .A(_120_),
    .B(_121_),
    .Y(_047_)
  );
  NAND _296_ (
    .A(A2[2]),
    .B(_081_),
    .Y(_122_)
  );
  NAND _297_ (
    .A(data_out[18]),
    .B(_082_),
    .Y(_123_)
  );
  NAND _298_ (
    .A(_122_),
    .B(_123_),
    .Y(_046_)
  );
  NAND _299_ (
    .A(A2[1]),
    .B(_081_),
    .Y(_124_)
  );
  NAND _300_ (
    .A(data_out[17]),
    .B(_082_),
    .Y(_125_)
  );
  NAND _301_ (
    .A(_124_),
    .B(_125_),
    .Y(_045_)
  );
  NAND _302_ (
    .A(A2[0]),
    .B(_081_),
    .Y(_126_)
  );
  NAND _303_ (
    .A(data_out[16]),
    .B(_082_),
    .Y(_127_)
  );
  NAND _304_ (
    .A(_126_),
    .B(_127_),
    .Y(_044_)
  );
  NAND _305_ (
    .A(A3[7]),
    .B(_081_),
    .Y(_128_)
  );
  NAND _306_ (
    .A(data_out[15]),
    .B(_082_),
    .Y(_129_)
  );
  NAND _307_ (
    .A(_128_),
    .B(_129_),
    .Y(_043_)
  );
  NAND _308_ (
    .A(A3[6]),
    .B(_081_),
    .Y(_130_)
  );
  NAND _309_ (
    .A(data_out[14]),
    .B(_082_),
    .Y(_131_)
  );
  NAND _310_ (
    .A(_130_),
    .B(_131_),
    .Y(_042_)
  );
  NAND _311_ (
    .A(A3[5]),
    .B(_081_),
    .Y(_132_)
  );
  NAND _312_ (
    .A(data_out[13]),
    .B(_082_),
    .Y(_133_)
  );
  NAND _313_ (
    .A(_132_),
    .B(_133_),
    .Y(_041_)
  );
  NAND _314_ (
    .A(A3[4]),
    .B(_081_),
    .Y(_134_)
  );
  NAND _315_ (
    .A(data_out[12]),
    .B(_082_),
    .Y(_135_)
  );
  NAND _316_ (
    .A(_134_),
    .B(_135_),
    .Y(_040_)
  );
  NAND _317_ (
    .A(A3[3]),
    .B(_081_),
    .Y(_136_)
  );
  NAND _318_ (
    .A(data_out[11]),
    .B(_082_),
    .Y(_137_)
  );
  NAND _319_ (
    .A(_136_),
    .B(_137_),
    .Y(_039_)
  );
  NAND _320_ (
    .A(A3[2]),
    .B(_081_),
    .Y(_138_)
  );
  NAND _321_ (
    .A(data_out[10]),
    .B(_082_),
    .Y(_139_)
  );
  NAND _322_ (
    .A(_138_),
    .B(_139_),
    .Y(_038_)
  );
  NAND _323_ (
    .A(A3[1]),
    .B(_081_),
    .Y(_140_)
  );
  NAND _324_ (
    .A(data_out[9]),
    .B(_082_),
    .Y(_141_)
  );
  NAND _325_ (
    .A(_140_),
    .B(_141_),
    .Y(_037_)
  );
  NAND _326_ (
    .A(A3[0]),
    .B(_081_),
    .Y(_142_)
  );
  NAND _327_ (
    .A(data_out[8]),
    .B(_082_),
    .Y(_143_)
  );
  NAND _328_ (
    .A(_142_),
    .B(_143_),
    .Y(_036_)
  );
  NAND _329_ (
    .A(data_in[7]),
    .B(_081_),
    .Y(_144_)
  );
  NAND _330_ (
    .A(data_out[7]),
    .B(_082_),
    .Y(_145_)
  );
  NAND _331_ (
    .A(_144_),
    .B(_145_),
    .Y(_035_)
  );
  NAND _332_ (
    .A(data_in[6]),
    .B(_081_),
    .Y(_146_)
  );
  NAND _333_ (
    .A(data_out[6]),
    .B(_082_),
    .Y(_147_)
  );
  NAND _334_ (
    .A(_146_),
    .B(_147_),
    .Y(_034_)
  );
  NAND _335_ (
    .A(data_in[5]),
    .B(_081_),
    .Y(_148_)
  );
  NAND _336_ (
    .A(data_out[5]),
    .B(_082_),
    .Y(_149_)
  );
  NAND _337_ (
    .A(_148_),
    .B(_149_),
    .Y(_033_)
  );
  NAND _338_ (
    .A(data_in[4]),
    .B(_081_),
    .Y(_150_)
  );
  NAND _339_ (
    .A(data_out[4]),
    .B(_082_),
    .Y(_151_)
  );
  NAND _340_ (
    .A(_150_),
    .B(_151_),
    .Y(_032_)
  );
  NAND _341_ (
    .A(data_in[3]),
    .B(_081_),
    .Y(_152_)
  );
  NAND _342_ (
    .A(data_out[3]),
    .B(_082_),
    .Y(_153_)
  );
  NAND _343_ (
    .A(_152_),
    .B(_153_),
    .Y(_031_)
  );
  NAND _344_ (
    .A(data_in[2]),
    .B(_081_),
    .Y(_154_)
  );
  NAND _345_ (
    .A(data_out[2]),
    .B(_082_),
    .Y(_155_)
  );
  NAND _346_ (
    .A(_154_),
    .B(_155_),
    .Y(_030_)
  );
  NAND _347_ (
    .A(data_in[1]),
    .B(_081_),
    .Y(_156_)
  );
  NAND _348_ (
    .A(data_out[1]),
    .B(_082_),
    .Y(_157_)
  );
  NAND _349_ (
    .A(_156_),
    .B(_157_),
    .Y(_029_)
  );
  NAND _350_ (
    .A(data_in[0]),
    .B(_081_),
    .Y(_158_)
  );
  NAND _351_ (
    .A(data_out[0]),
    .B(_082_),
    .Y(_159_)
  );
  NAND _352_ (
    .A(_158_),
    .B(_159_),
    .Y(_028_)
  );
  NOR _353_ (
    .A(counter[2]),
    .B(counter[0]),
    .Y(_160_)
  );
  NAND _354_ (
    .A(_069_),
    .B(_070_),
    .Y(_161_)
  );
  NOR _355_ (
    .A(_071_),
    .B(_161_),
    .Y(_162_)
  );
  NAND _356_ (
    .A(counter[1]),
    .B(_160_),
    .Y(_163_)
  );
  NAND _357_ (
    .A(data_in[7]),
    .B(_162_),
    .Y(_164_)
  );
  NAND _358_ (
    .A(A2[7]),
    .B(_163_),
    .Y(_165_)
  );
  NAND _359_ (
    .A(_164_),
    .B(_165_),
    .Y(_027_)
  );
  NAND _360_ (
    .A(data_in[6]),
    .B(_162_),
    .Y(_166_)
  );
  NAND _361_ (
    .A(A2[6]),
    .B(_163_),
    .Y(_167_)
  );
  NAND _362_ (
    .A(_166_),
    .B(_167_),
    .Y(_026_)
  );
  NAND _363_ (
    .A(data_in[5]),
    .B(_162_),
    .Y(_168_)
  );
  NAND _364_ (
    .A(A2[5]),
    .B(_163_),
    .Y(_169_)
  );
  NAND _365_ (
    .A(_168_),
    .B(_169_),
    .Y(_025_)
  );
  NAND _366_ (
    .A(data_in[4]),
    .B(_162_),
    .Y(_170_)
  );
  NAND _367_ (
    .A(A2[4]),
    .B(_163_),
    .Y(_171_)
  );
  NAND _368_ (
    .A(_170_),
    .B(_171_),
    .Y(_024_)
  );
  NAND _369_ (
    .A(data_in[3]),
    .B(_162_),
    .Y(_172_)
  );
  NAND _370_ (
    .A(A2[3]),
    .B(_163_),
    .Y(_173_)
  );
  NAND _371_ (
    .A(_172_),
    .B(_173_),
    .Y(_023_)
  );
  NAND _372_ (
    .A(data_in[2]),
    .B(_162_),
    .Y(_174_)
  );
  NAND _373_ (
    .A(A2[2]),
    .B(_163_),
    .Y(_175_)
  );
  NAND _374_ (
    .A(_174_),
    .B(_175_),
    .Y(_022_)
  );
  NAND _375_ (
    .A(data_in[1]),
    .B(_162_),
    .Y(_176_)
  );
  NAND _376_ (
    .A(A2[1]),
    .B(_163_),
    .Y(_177_)
  );
  NAND _377_ (
    .A(_176_),
    .B(_177_),
    .Y(_021_)
  );
  NAND _378_ (
    .A(data_in[0]),
    .B(_162_),
    .Y(_178_)
  );
  NAND _379_ (
    .A(A2[0]),
    .B(_163_),
    .Y(_179_)
  );
  NAND _380_ (
    .A(_178_),
    .B(_179_),
    .Y(_020_)
  );
  NAND _381_ (
    .A(data_in[7]),
    .B(_090_),
    .Y(_180_)
  );
  NAND _382_ (
    .A(A3[7]),
    .B(_091_),
    .Y(_181_)
  );
  NAND _383_ (
    .A(_180_),
    .B(_181_),
    .Y(_019_)
  );
  NAND _384_ (
    .A(data_in[6]),
    .B(_090_),
    .Y(_182_)
  );
  NAND _385_ (
    .A(A3[6]),
    .B(_091_),
    .Y(_183_)
  );
  NAND _386_ (
    .A(_182_),
    .B(_183_),
    .Y(_018_)
  );
  NAND _387_ (
    .A(data_in[5]),
    .B(_090_),
    .Y(_184_)
  );
  NAND _388_ (
    .A(A3[5]),
    .B(_091_),
    .Y(_185_)
  );
  NAND _389_ (
    .A(_184_),
    .B(_185_),
    .Y(_017_)
  );
  NAND _390_ (
    .A(data_in[4]),
    .B(_090_),
    .Y(_186_)
  );
  NAND _391_ (
    .A(A3[4]),
    .B(_091_),
    .Y(_187_)
  );
  NAND _392_ (
    .A(_186_),
    .B(_187_),
    .Y(_016_)
  );
  NAND _393_ (
    .A(data_in[3]),
    .B(_090_),
    .Y(_188_)
  );
  NAND _394_ (
    .A(A3[3]),
    .B(_091_),
    .Y(_189_)
  );
  NAND _395_ (
    .A(_188_),
    .B(_189_),
    .Y(_015_)
  );
  NAND _396_ (
    .A(data_in[2]),
    .B(_090_),
    .Y(_190_)
  );
  NAND _397_ (
    .A(A3[2]),
    .B(_091_),
    .Y(_191_)
  );
  NAND _398_ (
    .A(_190_),
    .B(_191_),
    .Y(_014_)
  );
  NAND _399_ (
    .A(data_in[1]),
    .B(_090_),
    .Y(_192_)
  );
  NAND _400_ (
    .A(A3[1]),
    .B(_091_),
    .Y(_193_)
  );
  NAND _401_ (
    .A(_192_),
    .B(_193_),
    .Y(_013_)
  );
  NAND _402_ (
    .A(data_in[0]),
    .B(_090_),
    .Y(_194_)
  );
  NAND _403_ (
    .A(A3[0]),
    .B(_091_),
    .Y(_195_)
  );
  NAND _404_ (
    .A(_194_),
    .B(_195_),
    .Y(_012_)
  );
  NOR _405_ (
    .A(counter[1]),
    .B(_089_),
    .Y(_196_)
  );
  NAND _406_ (
    .A(_071_),
    .B(_088_),
    .Y(_197_)
  );
  NAND _407_ (
    .A(data_in[7]),
    .B(_196_),
    .Y(_198_)
  );
  NAND _408_ (
    .A(A1[7]),
    .B(_197_),
    .Y(_199_)
  );
  NAND _409_ (
    .A(_198_),
    .B(_199_),
    .Y(_011_)
  );
  NAND _410_ (
    .A(data_in[6]),
    .B(_196_),
    .Y(_200_)
  );
  NAND _411_ (
    .A(A1[6]),
    .B(_197_),
    .Y(_201_)
  );
  NAND _412_ (
    .A(_200_),
    .B(_201_),
    .Y(_010_)
  );
  NAND _413_ (
    .A(data_in[5]),
    .B(_196_),
    .Y(_202_)
  );
  NAND _414_ (
    .A(A1[5]),
    .B(_197_),
    .Y(_203_)
  );
  NAND _415_ (
    .A(_202_),
    .B(_203_),
    .Y(_009_)
  );
  NAND _416_ (
    .A(data_in[4]),
    .B(_196_),
    .Y(_204_)
  );
  NAND _417_ (
    .A(A1[4]),
    .B(_197_),
    .Y(_205_)
  );
  NAND _418_ (
    .A(_204_),
    .B(_205_),
    .Y(_008_)
  );
  NAND _419_ (
    .A(data_in[3]),
    .B(_196_),
    .Y(_206_)
  );
  NAND _420_ (
    .A(A1[3]),
    .B(_197_),
    .Y(_207_)
  );
  NAND _421_ (
    .A(_206_),
    .B(_207_),
    .Y(_007_)
  );
  NAND _422_ (
    .A(data_in[2]),
    .B(_196_),
    .Y(_208_)
  );
  NAND _423_ (
    .A(A1[2]),
    .B(_197_),
    .Y(_209_)
  );
  NAND _424_ (
    .A(_208_),
    .B(_209_),
    .Y(_006_)
  );
  NAND _425_ (
    .A(data_in[1]),
    .B(_196_),
    .Y(_210_)
  );
  NAND _426_ (
    .A(A1[1]),
    .B(_197_),
    .Y(_211_)
  );
  NAND _427_ (
    .A(_210_),
    .B(_211_),
    .Y(_005_)
  );
  NAND _428_ (
    .A(data_in[0]),
    .B(_196_),
    .Y(_212_)
  );
  NAND _429_ (
    .A(A1[0]),
    .B(_197_),
    .Y(_213_)
  );
  NAND _430_ (
    .A(_212_),
    .B(_213_),
    .Y(_004_)
  );
  NOR _431_ (
    .A(valid_out),
    .B(_081_),
    .Y(_214_)
  );
  NOR _432_ (
    .A(counter2[1]),
    .B(valid_in),
    .Y(_215_)
  );
  NAND _433_ (
    .A(counter2[2]),
    .B(_215_),
    .Y(_216_)
  );
  NOR _434_ (
    .A(counter2[0]),
    .B(_216_),
    .Y(_217_)
  );
  NOR _435_ (
    .A(_214_),
    .B(_217_),
    .Y(_000_)
  );
  NOR _436_ (
    .A(_072_),
    .B(_079_),
    .Y(_218_)
  );
  NAND _437_ (
    .A(_072_),
    .B(_079_),
    .Y(_219_)
  );
  NAND _438_ (
    .A(_082_),
    .B(_219_),
    .Y(_220_)
  );
  NOR _439_ (
    .A(_218_),
    .B(_220_),
    .Y(_065_)
  );
  NOT _440_ (
    .A(clk_4f),
    .Y(_002_)
  );
  NOT _441_ (
    .A(clk_4f),
    .Y(_001_)
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _442_ (
    .C(clk_4f),
    .D(_000_),
    .Q(valid_out)
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _443_ (
    .C(clk_4f),
    .D(_004_),
    .Q(A1[0])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _444_ (
    .C(clk_4f),
    .D(_005_),
    .Q(A1[1])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _445_ (
    .C(clk_4f),
    .D(_006_),
    .Q(A1[2])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _446_ (
    .C(clk_4f),
    .D(_007_),
    .Q(A1[3])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _447_ (
    .C(clk_4f),
    .D(_008_),
    .Q(A1[4])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _448_ (
    .C(clk_4f),
    .D(_009_),
    .Q(A1[5])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _449_ (
    .C(clk_4f),
    .D(_010_),
    .Q(A1[6])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _450_ (
    .C(clk_4f),
    .D(_011_),
    .Q(A1[7])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _451_ (
    .C(clk_4f),
    .D(_012_),
    .Q(A3[0])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _452_ (
    .C(clk_4f),
    .D(_013_),
    .Q(A3[1])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _453_ (
    .C(clk_4f),
    .D(_014_),
    .Q(A3[2])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _454_ (
    .C(clk_4f),
    .D(_015_),
    .Q(A3[3])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _455_ (
    .C(clk_4f),
    .D(_016_),
    .Q(A3[4])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _456_ (
    .C(clk_4f),
    .D(_017_),
    .Q(A3[5])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _457_ (
    .C(clk_4f),
    .D(_018_),
    .Q(A3[6])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _458_ (
    .C(clk_4f),
    .D(_019_),
    .Q(A3[7])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _459_ (
    .C(clk_4f),
    .D(_020_),
    .Q(A2[0])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _460_ (
    .C(clk_4f),
    .D(_021_),
    .Q(A2[1])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _461_ (
    .C(clk_4f),
    .D(_022_),
    .Q(A2[2])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _462_ (
    .C(clk_4f),
    .D(_023_),
    .Q(A2[3])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _463_ (
    .C(clk_4f),
    .D(_024_),
    .Q(A2[4])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _464_ (
    .C(clk_4f),
    .D(_025_),
    .Q(A2[5])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _465_ (
    .C(clk_4f),
    .D(_026_),
    .Q(A2[6])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _466_ (
    .C(clk_4f),
    .D(_027_),
    .Q(A2[7])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _467_ (
    .C(clk_4f),
    .D(_028_),
    .Q(data_out[0])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _468_ (
    .C(clk_4f),
    .D(_029_),
    .Q(data_out[1])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _469_ (
    .C(clk_4f),
    .D(_030_),
    .Q(data_out[2])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _470_ (
    .C(clk_4f),
    .D(_031_),
    .Q(data_out[3])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _471_ (
    .C(clk_4f),
    .D(_032_),
    .Q(data_out[4])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _472_ (
    .C(clk_4f),
    .D(_033_),
    .Q(data_out[5])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _473_ (
    .C(clk_4f),
    .D(_034_),
    .Q(data_out[6])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _474_ (
    .C(clk_4f),
    .D(_035_),
    .Q(data_out[7])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _475_ (
    .C(clk_4f),
    .D(_036_),
    .Q(data_out[8])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _476_ (
    .C(clk_4f),
    .D(_037_),
    .Q(data_out[9])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _477_ (
    .C(clk_4f),
    .D(_038_),
    .Q(data_out[10])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _478_ (
    .C(clk_4f),
    .D(_039_),
    .Q(data_out[11])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _479_ (
    .C(clk_4f),
    .D(_040_),
    .Q(data_out[12])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _480_ (
    .C(clk_4f),
    .D(_041_),
    .Q(data_out[13])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _481_ (
    .C(clk_4f),
    .D(_042_),
    .Q(data_out[14])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _482_ (
    .C(clk_4f),
    .D(_043_),
    .Q(data_out[15])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _483_ (
    .C(clk_4f),
    .D(_044_),
    .Q(data_out[16])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _484_ (
    .C(clk_4f),
    .D(_045_),
    .Q(data_out[17])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _485_ (
    .C(clk_4f),
    .D(_046_),
    .Q(data_out[18])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _486_ (
    .C(clk_4f),
    .D(_047_),
    .Q(data_out[19])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _487_ (
    .C(clk_4f),
    .D(_048_),
    .Q(data_out[20])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _488_ (
    .C(clk_4f),
    .D(_049_),
    .Q(data_out[21])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _489_ (
    .C(clk_4f),
    .D(_050_),
    .Q(data_out[22])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _490_ (
    .C(clk_4f),
    .D(_051_),
    .Q(data_out[23])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _491_ (
    .C(clk_4f),
    .D(_052_),
    .Q(data_out[24])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _492_ (
    .C(clk_4f),
    .D(_053_),
    .Q(data_out[25])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _493_ (
    .C(clk_4f),
    .D(_054_),
    .Q(data_out[26])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _494_ (
    .C(clk_4f),
    .D(_055_),
    .Q(data_out[27])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _495_ (
    .C(clk_4f),
    .D(_056_),
    .Q(data_out[28])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _496_ (
    .C(clk_4f),
    .D(_057_),
    .Q(data_out[29])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _497_ (
    .C(clk_4f),
    .D(_058_),
    .Q(data_out[30])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _498_ (
    .C(clk_4f),
    .D(_059_),
    .Q(data_out[31])
  );
  (* src = "Mux8_32_synth.v:18.1-28.4" *)
  DFF _499_ (
    .C(_001_),
    .D(_060_),
    .Q(counter[1])
  );
  (* src = "Mux8_32_synth.v:18.1-28.4" *)
  DFF _500_ (
    .C(_002_),
    .D(_061_),
    .Q(counter[2])
  );
  (* src = "Mux8_32_synth.v:18.1-28.4" *)
  DFF _501_ (
    .C(_003_),
    .D(_062_),
    .Q(counter[0])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _502_ (
    .C(clk_4f),
    .D(_063_),
    .Q(counter2[0])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _503_ (
    .C(clk_4f),
    .D(_064_),
    .Q(counter2[1])
  );
  (* src = "Mux8_32_synth.v:41.1-70.4" *)
  DFF _504_ (
    .C(clk_4f),
    .D(_065_),
    .Q(counter2[2])
  );
endmodule