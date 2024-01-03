package LDPC_CSR_ral_pkg;
  import uvm_pkg::*;
  import rggen_ral_pkg::*;
  `include "uvm_macros.svh"
  `include "rggen_ral_macros.svh"
  class LDPC_ENC_MSG_IN_0_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_1_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_2_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_3_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_4_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_5_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_6_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_7_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_8_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_9_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_10_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_11_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_12_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_13_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_14_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_15_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_16_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_17_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_18_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_19_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_20_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_21_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_22_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_23_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_24_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_25_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_26_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_27_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_28_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_29_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_30_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_31_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_32_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_33_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_34_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_35_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_36_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_37_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_38_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_MSG_IN_39_reg_model extends rggen_ral_reg;
    rand rggen_ral_field msg_inr;
    rand rggen_ral_field msg_inw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(msg_inr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(msg_inw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_0_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_1_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_2_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_3_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_4_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_5_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_6_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_7_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_8_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_9_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_10_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_11_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_12_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_13_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_14_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_15_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_16_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_17_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_18_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_19_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_20_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_21_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_22_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_23_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_24_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_25_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_26_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_27_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_28_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_29_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_30_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_31_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_32_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_33_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_34_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_35_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_36_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_37_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_38_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_39_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_40_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_41_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_42_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_43_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_44_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_45_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_46_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_47_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_48_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_49_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_50_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_51_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_52_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_53_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_54_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_55_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_56_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_57_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_58_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_59_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_60_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_61_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_62_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_63_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_64_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_65_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_66_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_67_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_68_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_69_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_70_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_71_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_72_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_73_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_74_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_75_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_76_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_77_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_78_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_79_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_80_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_81_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_82_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_83_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_84_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_85_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_86_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_87_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_88_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_89_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_90_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_91_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_92_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_93_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_94_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_95_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_96_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_97_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_98_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_99_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_100_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_101_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_102_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_103_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_104_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_105_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_106_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_107_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_108_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_109_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_110_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_111_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_112_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_113_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_114_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_115_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_116_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_117_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_118_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_119_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_120_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_121_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_122_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_123_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_124_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_125_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_126_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_127_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_128_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_129_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_130_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_131_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_132_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_133_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_134_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_135_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_136_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_137_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_138_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_139_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_140_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_141_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_142_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_143_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_144_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_145_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_146_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_147_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_148_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_149_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_150_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_151_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_152_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_153_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_154_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_155_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_156_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_157_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_158_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_159_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_160_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_161_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_162_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_163_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_164_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_165_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_166_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_167_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_168_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_169_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_170_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_171_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_172_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_173_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_174_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_175_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_176_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_177_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_178_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_179_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_180_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_181_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_182_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_183_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_184_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_185_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_186_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_187_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_188_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_189_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_190_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_191_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_192_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_193_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_194_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_195_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_196_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_197_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_198_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_199_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_200_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_201_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_202_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_203_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_204_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_205_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_206_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_207_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_codewrdr;
    rand rggen_ral_field enc_codewrdw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_codewrdr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_codewrdw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_ENC_CODEWRD_VLD_reg_model extends rggen_ral_reg;
    rand rggen_ral_field enc_valid_cwordr;
    rand rggen_ral_field enc_valid_cwordw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(enc_valid_cwordr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(enc_valid_cwordw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_0_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_1_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_2_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_3_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_4_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_5_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_6_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_7_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_8_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_9_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_10_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_11_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_12_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_13_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_14_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_15_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_16_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_17_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_18_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_19_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_20_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_21_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_22_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_23_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_24_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_25_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_26_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_27_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_28_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_29_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_30_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_31_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_32_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_33_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_34_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_35_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_36_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_37_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_38_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_39_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_40_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_41_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_42_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_43_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_44_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_45_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_46_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_47_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_48_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_49_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_50_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_51_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_52_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_53_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_54_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_55_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_56_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_57_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_58_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_59_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_60_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_61_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_62_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_63_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_64_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_65_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_66_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_67_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_68_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_69_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_70_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_71_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_72_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_73_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_74_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_75_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_76_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_77_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_78_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_79_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_80_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_81_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_82_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_83_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_84_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_85_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_86_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_87_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_88_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_89_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_90_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_91_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_92_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_93_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_94_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_95_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_96_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_97_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_98_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_99_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_100_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_101_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_102_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_103_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_104_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_105_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_106_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_107_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_108_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_109_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_110_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_111_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_112_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_113_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_114_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_115_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_116_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_117_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_118_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_119_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_120_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_121_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_122_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_123_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_124_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_125_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_126_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_127_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_128_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_129_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_130_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_131_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_132_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_133_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_134_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_135_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_136_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_137_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_138_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_139_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_140_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_141_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_142_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_143_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_144_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_145_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_146_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_147_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_148_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_149_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_150_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_151_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_152_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_153_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_154_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_155_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_156_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_157_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_158_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_159_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_160_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_161_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_162_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_163_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_164_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_165_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_166_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_167_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_168_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_169_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_170_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_171_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_172_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_173_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_174_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_175_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_176_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_177_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_178_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_179_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_180_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_181_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_182_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_183_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_184_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_185_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_186_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_187_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_188_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_189_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_190_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_191_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_192_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_193_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_194_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_195_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_196_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_197_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_198_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_199_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_200_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_201_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_202_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_203_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_204_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_205_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_206_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_207_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_q0r;
    rand rggen_ral_field cword_q0w;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_q0r, 0, 2, "RO", 1, 2'h0, 1, -1, "")
      `rggen_ral_create_field(cword_q0w, 2, 2, "RW", 0, 2'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 4, 28, "RO", 1, 28'h0000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_0_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_1_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_2_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_3_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_4_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_5_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_6_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_7_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_8_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_9_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_10_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_11_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_12_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_13_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_14_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_15_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_16_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_17_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_18_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_19_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_20_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_21_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_22_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_23_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_24_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_25_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_26_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_27_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_28_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_29_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_30_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_31_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_32_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_33_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_34_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_35_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_36_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_37_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_38_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_39_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_40_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_41_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_42_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_43_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_44_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_45_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_46_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_47_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_48_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_49_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_50_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_51_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_52_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_53_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_54_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_55_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_56_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_57_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_58_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_59_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_60_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_61_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_62_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_63_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_64_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_65_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_66_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_67_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_68_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_69_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_70_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_71_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_72_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_73_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_74_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_75_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_76_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_77_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_78_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_79_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_80_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_81_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_82_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_83_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_84_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_85_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_86_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_87_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_88_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_89_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_90_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_91_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_92_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_93_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_94_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_95_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_96_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_97_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_98_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_99_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_100_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_101_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_102_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_103_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_104_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_105_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_106_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_107_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_108_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_109_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_110_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_111_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_112_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_113_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_114_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_115_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_116_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_117_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_118_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_119_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_120_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_121_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_122_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_123_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_124_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_125_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_126_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_127_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_128_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_129_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_130_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_131_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_132_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_133_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_134_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_135_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_136_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_137_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_138_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_139_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_140_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_141_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_142_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_143_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_144_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_145_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_146_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_147_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_148_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_149_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_150_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_151_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_152_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_153_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_154_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_155_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_156_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_157_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_158_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_159_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_160_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_161_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_162_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_163_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_164_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_165_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_166_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_EXPSYND_167_reg_model extends rggen_ral_reg;
    rand rggen_ral_field exp_synr;
    rand rggen_ral_field exp_synw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(exp_synr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(exp_synw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_PROBABILITY_reg_model extends rggen_ral_reg;
    rand rggen_ral_field perc_probability;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(perc_probability, 0, 32, "RW", 0, 32'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_HamDist_loop_max_reg_model extends rggen_ral_reg;
    rand rggen_ral_field HamDist_loop_max;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(HamDist_loop_max, 0, 32, "RW", 0, 32'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_HamDist_loop_percentage_reg_model extends rggen_ral_reg;
    rand rggen_ral_field HamDist_loop_percentage;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(HamDist_loop_percentage, 0, 32, "RW", 0, 32'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_HamDist_iir1_reg_model extends rggen_ral_reg;
    rand rggen_ral_field HamDist_iir1;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(HamDist_iir1, 0, 32, "RW", 0, 32'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_HamDist_iir2_NOT_USED_reg_model extends rggen_ral_reg;
    rand rggen_ral_field HamDist_iir2;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(HamDist_iir2, 0, 32, "RW", 0, 32'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_HamDist_iir3_NOT_USED_reg_model extends rggen_ral_reg;
    rand rggen_ral_field HamDist_iir3;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(HamDist_iir3, 0, 32, "RW", 0, 32'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_converged_valid_reg_model extends rggen_ral_reg;
    rand rggen_ral_field convergedr;
    rand rggen_ral_field convergedw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(convergedr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(convergedw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_converged_status_reg_model extends rggen_ral_reg;
    rand rggen_ral_field convergedr;
    rand rggen_ral_field convergedw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(convergedr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(convergedw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_converged_valid_NOT_USED_reg_model extends rggen_ral_reg;
    rand rggen_ral_field converged_validr;
    rand rggen_ral_field converged_validw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(converged_validr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(converged_validw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_start_reg_model extends rggen_ral_reg;
    rand rggen_ral_field startr;
    rand rggen_ral_field startw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(startr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(startw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_valid_NOT_USED_reg_model extends rggen_ral_reg;
    rand rggen_ral_field validr;
    rand rggen_ral_field validw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(validr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(validw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_valid_codeword_NOT_USED_reg_model extends rggen_ral_reg;
    rand rggen_ral_field valid_codewordr;
    rand rggen_ral_field valid_codewordw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(valid_codewordr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(valid_codewordw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_0_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_1_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_2_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_3_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_4_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_5_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_6_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_7_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_8_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_9_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_10_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_11_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_12_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_13_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_14_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_15_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_16_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_17_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_18_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_19_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_20_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_21_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_22_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_23_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_24_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_25_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_26_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_27_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_28_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_29_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_30_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_31_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_32_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_33_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_34_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_35_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_36_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_37_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_38_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_39_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_40_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_41_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_42_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_43_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_44_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_45_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_46_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_47_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_48_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_49_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_50_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_51_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_52_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_53_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_54_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_55_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_56_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_57_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_58_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_59_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_60_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_61_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_62_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_63_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_64_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_65_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_66_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_67_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_68_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_69_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_70_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_71_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_72_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_73_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_74_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_75_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_76_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_77_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_78_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_79_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_80_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_81_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_82_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_83_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_84_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_85_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_86_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_87_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_88_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_89_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_90_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_91_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_92_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_93_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_94_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_95_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_96_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_97_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_98_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_99_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_100_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_101_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_102_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_103_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_104_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_105_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_106_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_107_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_108_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_109_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_110_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_111_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_112_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_113_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_114_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_115_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_116_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_117_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_118_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_119_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_120_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_121_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_122_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_123_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_124_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_125_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_126_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_127_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_128_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_129_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_130_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_131_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_132_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_133_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_134_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_135_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_136_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_137_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_138_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_139_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_140_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_141_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_142_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_143_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_144_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_145_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_146_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_147_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_148_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_149_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_150_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_151_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_152_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_153_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_154_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_155_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_156_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_157_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_158_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_159_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_160_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_161_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_162_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_163_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_164_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_165_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_166_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_167_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_168_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_169_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_170_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_171_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_172_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_173_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_174_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_175_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_176_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_177_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_178_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_179_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_180_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_181_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_182_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_183_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_184_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_185_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_186_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_187_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_188_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_189_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_190_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_191_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_192_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_193_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_194_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_195_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_196_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_197_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_198_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_199_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_200_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_201_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_202_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_203_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_204_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_205_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_206_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_DEC_CODEWRD_OUT_BIT_207_reg_model extends rggen_ral_reg;
    rand rggen_ral_field cword_outr;
    rand rggen_ral_field cword_outw;
    rand rggen_ral_field reserved;
    function new(string name);
      super.new(name, 32, 0);
    endfunction
    function void build();
      `rggen_ral_create_field(cword_outr, 0, 1, "RO", 1, 1'h0, 1, -1, "")
      `rggen_ral_create_field(cword_outw, 1, 1, "RW", 0, 1'h0, 1, -1, "")
      `rggen_ral_create_field(reserved, 2, 30, "RO", 1, 30'h00000000, 1, -1, "")
    endfunction
  endclass
  class LDPC_CSR_block_model extends rggen_ral_block;
    rand LDPC_ENC_MSG_IN_0_reg_model LDPC_ENC_MSG_IN_0;
    rand LDPC_ENC_MSG_IN_1_reg_model LDPC_ENC_MSG_IN_1;
    rand LDPC_ENC_MSG_IN_2_reg_model LDPC_ENC_MSG_IN_2;
    rand LDPC_ENC_MSG_IN_3_reg_model LDPC_ENC_MSG_IN_3;
    rand LDPC_ENC_MSG_IN_4_reg_model LDPC_ENC_MSG_IN_4;
    rand LDPC_ENC_MSG_IN_5_reg_model LDPC_ENC_MSG_IN_5;
    rand LDPC_ENC_MSG_IN_6_reg_model LDPC_ENC_MSG_IN_6;
    rand LDPC_ENC_MSG_IN_7_reg_model LDPC_ENC_MSG_IN_7;
    rand LDPC_ENC_MSG_IN_8_reg_model LDPC_ENC_MSG_IN_8;
    rand LDPC_ENC_MSG_IN_9_reg_model LDPC_ENC_MSG_IN_9;
    rand LDPC_ENC_MSG_IN_10_reg_model LDPC_ENC_MSG_IN_10;
    rand LDPC_ENC_MSG_IN_11_reg_model LDPC_ENC_MSG_IN_11;
    rand LDPC_ENC_MSG_IN_12_reg_model LDPC_ENC_MSG_IN_12;
    rand LDPC_ENC_MSG_IN_13_reg_model LDPC_ENC_MSG_IN_13;
    rand LDPC_ENC_MSG_IN_14_reg_model LDPC_ENC_MSG_IN_14;
    rand LDPC_ENC_MSG_IN_15_reg_model LDPC_ENC_MSG_IN_15;
    rand LDPC_ENC_MSG_IN_16_reg_model LDPC_ENC_MSG_IN_16;
    rand LDPC_ENC_MSG_IN_17_reg_model LDPC_ENC_MSG_IN_17;
    rand LDPC_ENC_MSG_IN_18_reg_model LDPC_ENC_MSG_IN_18;
    rand LDPC_ENC_MSG_IN_19_reg_model LDPC_ENC_MSG_IN_19;
    rand LDPC_ENC_MSG_IN_20_reg_model LDPC_ENC_MSG_IN_20;
    rand LDPC_ENC_MSG_IN_21_reg_model LDPC_ENC_MSG_IN_21;
    rand LDPC_ENC_MSG_IN_22_reg_model LDPC_ENC_MSG_IN_22;
    rand LDPC_ENC_MSG_IN_23_reg_model LDPC_ENC_MSG_IN_23;
    rand LDPC_ENC_MSG_IN_24_reg_model LDPC_ENC_MSG_IN_24;
    rand LDPC_ENC_MSG_IN_25_reg_model LDPC_ENC_MSG_IN_25;
    rand LDPC_ENC_MSG_IN_26_reg_model LDPC_ENC_MSG_IN_26;
    rand LDPC_ENC_MSG_IN_27_reg_model LDPC_ENC_MSG_IN_27;
    rand LDPC_ENC_MSG_IN_28_reg_model LDPC_ENC_MSG_IN_28;
    rand LDPC_ENC_MSG_IN_29_reg_model LDPC_ENC_MSG_IN_29;
    rand LDPC_ENC_MSG_IN_30_reg_model LDPC_ENC_MSG_IN_30;
    rand LDPC_ENC_MSG_IN_31_reg_model LDPC_ENC_MSG_IN_31;
    rand LDPC_ENC_MSG_IN_32_reg_model LDPC_ENC_MSG_IN_32;
    rand LDPC_ENC_MSG_IN_33_reg_model LDPC_ENC_MSG_IN_33;
    rand LDPC_ENC_MSG_IN_34_reg_model LDPC_ENC_MSG_IN_34;
    rand LDPC_ENC_MSG_IN_35_reg_model LDPC_ENC_MSG_IN_35;
    rand LDPC_ENC_MSG_IN_36_reg_model LDPC_ENC_MSG_IN_36;
    rand LDPC_ENC_MSG_IN_37_reg_model LDPC_ENC_MSG_IN_37;
    rand LDPC_ENC_MSG_IN_38_reg_model LDPC_ENC_MSG_IN_38;
    rand LDPC_ENC_MSG_IN_39_reg_model LDPC_ENC_MSG_IN_39;
    rand LDPC_ENC_CODEWRD_0_reg_model LDPC_ENC_CODEWRD_0;
    rand LDPC_ENC_CODEWRD_1_reg_model LDPC_ENC_CODEWRD_1;
    rand LDPC_ENC_CODEWRD_2_reg_model LDPC_ENC_CODEWRD_2;
    rand LDPC_ENC_CODEWRD_3_reg_model LDPC_ENC_CODEWRD_3;
    rand LDPC_ENC_CODEWRD_4_reg_model LDPC_ENC_CODEWRD_4;
    rand LDPC_ENC_CODEWRD_5_reg_model LDPC_ENC_CODEWRD_5;
    rand LDPC_ENC_CODEWRD_6_reg_model LDPC_ENC_CODEWRD_6;
    rand LDPC_ENC_CODEWRD_7_reg_model LDPC_ENC_CODEWRD_7;
    rand LDPC_ENC_CODEWRD_8_reg_model LDPC_ENC_CODEWRD_8;
    rand LDPC_ENC_CODEWRD_9_reg_model LDPC_ENC_CODEWRD_9;
    rand LDPC_ENC_CODEWRD_10_reg_model LDPC_ENC_CODEWRD_10;
    rand LDPC_ENC_CODEWRD_11_reg_model LDPC_ENC_CODEWRD_11;
    rand LDPC_ENC_CODEWRD_12_reg_model LDPC_ENC_CODEWRD_12;
    rand LDPC_ENC_CODEWRD_13_reg_model LDPC_ENC_CODEWRD_13;
    rand LDPC_ENC_CODEWRD_14_reg_model LDPC_ENC_CODEWRD_14;
    rand LDPC_ENC_CODEWRD_15_reg_model LDPC_ENC_CODEWRD_15;
    rand LDPC_ENC_CODEWRD_16_reg_model LDPC_ENC_CODEWRD_16;
    rand LDPC_ENC_CODEWRD_17_reg_model LDPC_ENC_CODEWRD_17;
    rand LDPC_ENC_CODEWRD_18_reg_model LDPC_ENC_CODEWRD_18;
    rand LDPC_ENC_CODEWRD_19_reg_model LDPC_ENC_CODEWRD_19;
    rand LDPC_ENC_CODEWRD_20_reg_model LDPC_ENC_CODEWRD_20;
    rand LDPC_ENC_CODEWRD_21_reg_model LDPC_ENC_CODEWRD_21;
    rand LDPC_ENC_CODEWRD_22_reg_model LDPC_ENC_CODEWRD_22;
    rand LDPC_ENC_CODEWRD_23_reg_model LDPC_ENC_CODEWRD_23;
    rand LDPC_ENC_CODEWRD_24_reg_model LDPC_ENC_CODEWRD_24;
    rand LDPC_ENC_CODEWRD_25_reg_model LDPC_ENC_CODEWRD_25;
    rand LDPC_ENC_CODEWRD_26_reg_model LDPC_ENC_CODEWRD_26;
    rand LDPC_ENC_CODEWRD_27_reg_model LDPC_ENC_CODEWRD_27;
    rand LDPC_ENC_CODEWRD_28_reg_model LDPC_ENC_CODEWRD_28;
    rand LDPC_ENC_CODEWRD_29_reg_model LDPC_ENC_CODEWRD_29;
    rand LDPC_ENC_CODEWRD_30_reg_model LDPC_ENC_CODEWRD_30;
    rand LDPC_ENC_CODEWRD_31_reg_model LDPC_ENC_CODEWRD_31;
    rand LDPC_ENC_CODEWRD_32_reg_model LDPC_ENC_CODEWRD_32;
    rand LDPC_ENC_CODEWRD_33_reg_model LDPC_ENC_CODEWRD_33;
    rand LDPC_ENC_CODEWRD_34_reg_model LDPC_ENC_CODEWRD_34;
    rand LDPC_ENC_CODEWRD_35_reg_model LDPC_ENC_CODEWRD_35;
    rand LDPC_ENC_CODEWRD_36_reg_model LDPC_ENC_CODEWRD_36;
    rand LDPC_ENC_CODEWRD_37_reg_model LDPC_ENC_CODEWRD_37;
    rand LDPC_ENC_CODEWRD_38_reg_model LDPC_ENC_CODEWRD_38;
    rand LDPC_ENC_CODEWRD_39_reg_model LDPC_ENC_CODEWRD_39;
    rand LDPC_ENC_CODEWRD_40_reg_model LDPC_ENC_CODEWRD_40;
    rand LDPC_ENC_CODEWRD_41_reg_model LDPC_ENC_CODEWRD_41;
    rand LDPC_ENC_CODEWRD_42_reg_model LDPC_ENC_CODEWRD_42;
    rand LDPC_ENC_CODEWRD_43_reg_model LDPC_ENC_CODEWRD_43;
    rand LDPC_ENC_CODEWRD_44_reg_model LDPC_ENC_CODEWRD_44;
    rand LDPC_ENC_CODEWRD_45_reg_model LDPC_ENC_CODEWRD_45;
    rand LDPC_ENC_CODEWRD_46_reg_model LDPC_ENC_CODEWRD_46;
    rand LDPC_ENC_CODEWRD_47_reg_model LDPC_ENC_CODEWRD_47;
    rand LDPC_ENC_CODEWRD_48_reg_model LDPC_ENC_CODEWRD_48;
    rand LDPC_ENC_CODEWRD_49_reg_model LDPC_ENC_CODEWRD_49;
    rand LDPC_ENC_CODEWRD_50_reg_model LDPC_ENC_CODEWRD_50;
    rand LDPC_ENC_CODEWRD_51_reg_model LDPC_ENC_CODEWRD_51;
    rand LDPC_ENC_CODEWRD_52_reg_model LDPC_ENC_CODEWRD_52;
    rand LDPC_ENC_CODEWRD_53_reg_model LDPC_ENC_CODEWRD_53;
    rand LDPC_ENC_CODEWRD_54_reg_model LDPC_ENC_CODEWRD_54;
    rand LDPC_ENC_CODEWRD_55_reg_model LDPC_ENC_CODEWRD_55;
    rand LDPC_ENC_CODEWRD_56_reg_model LDPC_ENC_CODEWRD_56;
    rand LDPC_ENC_CODEWRD_57_reg_model LDPC_ENC_CODEWRD_57;
    rand LDPC_ENC_CODEWRD_58_reg_model LDPC_ENC_CODEWRD_58;
    rand LDPC_ENC_CODEWRD_59_reg_model LDPC_ENC_CODEWRD_59;
    rand LDPC_ENC_CODEWRD_60_reg_model LDPC_ENC_CODEWRD_60;
    rand LDPC_ENC_CODEWRD_61_reg_model LDPC_ENC_CODEWRD_61;
    rand LDPC_ENC_CODEWRD_62_reg_model LDPC_ENC_CODEWRD_62;
    rand LDPC_ENC_CODEWRD_63_reg_model LDPC_ENC_CODEWRD_63;
    rand LDPC_ENC_CODEWRD_64_reg_model LDPC_ENC_CODEWRD_64;
    rand LDPC_ENC_CODEWRD_65_reg_model LDPC_ENC_CODEWRD_65;
    rand LDPC_ENC_CODEWRD_66_reg_model LDPC_ENC_CODEWRD_66;
    rand LDPC_ENC_CODEWRD_67_reg_model LDPC_ENC_CODEWRD_67;
    rand LDPC_ENC_CODEWRD_68_reg_model LDPC_ENC_CODEWRD_68;
    rand LDPC_ENC_CODEWRD_69_reg_model LDPC_ENC_CODEWRD_69;
    rand LDPC_ENC_CODEWRD_70_reg_model LDPC_ENC_CODEWRD_70;
    rand LDPC_ENC_CODEWRD_71_reg_model LDPC_ENC_CODEWRD_71;
    rand LDPC_ENC_CODEWRD_72_reg_model LDPC_ENC_CODEWRD_72;
    rand LDPC_ENC_CODEWRD_73_reg_model LDPC_ENC_CODEWRD_73;
    rand LDPC_ENC_CODEWRD_74_reg_model LDPC_ENC_CODEWRD_74;
    rand LDPC_ENC_CODEWRD_75_reg_model LDPC_ENC_CODEWRD_75;
    rand LDPC_ENC_CODEWRD_76_reg_model LDPC_ENC_CODEWRD_76;
    rand LDPC_ENC_CODEWRD_77_reg_model LDPC_ENC_CODEWRD_77;
    rand LDPC_ENC_CODEWRD_78_reg_model LDPC_ENC_CODEWRD_78;
    rand LDPC_ENC_CODEWRD_79_reg_model LDPC_ENC_CODEWRD_79;
    rand LDPC_ENC_CODEWRD_80_reg_model LDPC_ENC_CODEWRD_80;
    rand LDPC_ENC_CODEWRD_81_reg_model LDPC_ENC_CODEWRD_81;
    rand LDPC_ENC_CODEWRD_82_reg_model LDPC_ENC_CODEWRD_82;
    rand LDPC_ENC_CODEWRD_83_reg_model LDPC_ENC_CODEWRD_83;
    rand LDPC_ENC_CODEWRD_84_reg_model LDPC_ENC_CODEWRD_84;
    rand LDPC_ENC_CODEWRD_85_reg_model LDPC_ENC_CODEWRD_85;
    rand LDPC_ENC_CODEWRD_86_reg_model LDPC_ENC_CODEWRD_86;
    rand LDPC_ENC_CODEWRD_87_reg_model LDPC_ENC_CODEWRD_87;
    rand LDPC_ENC_CODEWRD_88_reg_model LDPC_ENC_CODEWRD_88;
    rand LDPC_ENC_CODEWRD_89_reg_model LDPC_ENC_CODEWRD_89;
    rand LDPC_ENC_CODEWRD_90_reg_model LDPC_ENC_CODEWRD_90;
    rand LDPC_ENC_CODEWRD_91_reg_model LDPC_ENC_CODEWRD_91;
    rand LDPC_ENC_CODEWRD_92_reg_model LDPC_ENC_CODEWRD_92;
    rand LDPC_ENC_CODEWRD_93_reg_model LDPC_ENC_CODEWRD_93;
    rand LDPC_ENC_CODEWRD_94_reg_model LDPC_ENC_CODEWRD_94;
    rand LDPC_ENC_CODEWRD_95_reg_model LDPC_ENC_CODEWRD_95;
    rand LDPC_ENC_CODEWRD_96_reg_model LDPC_ENC_CODEWRD_96;
    rand LDPC_ENC_CODEWRD_97_reg_model LDPC_ENC_CODEWRD_97;
    rand LDPC_ENC_CODEWRD_98_reg_model LDPC_ENC_CODEWRD_98;
    rand LDPC_ENC_CODEWRD_99_reg_model LDPC_ENC_CODEWRD_99;
    rand LDPC_ENC_CODEWRD_100_reg_model LDPC_ENC_CODEWRD_100;
    rand LDPC_ENC_CODEWRD_101_reg_model LDPC_ENC_CODEWRD_101;
    rand LDPC_ENC_CODEWRD_102_reg_model LDPC_ENC_CODEWRD_102;
    rand LDPC_ENC_CODEWRD_103_reg_model LDPC_ENC_CODEWRD_103;
    rand LDPC_ENC_CODEWRD_104_reg_model LDPC_ENC_CODEWRD_104;
    rand LDPC_ENC_CODEWRD_105_reg_model LDPC_ENC_CODEWRD_105;
    rand LDPC_ENC_CODEWRD_106_reg_model LDPC_ENC_CODEWRD_106;
    rand LDPC_ENC_CODEWRD_107_reg_model LDPC_ENC_CODEWRD_107;
    rand LDPC_ENC_CODEWRD_108_reg_model LDPC_ENC_CODEWRD_108;
    rand LDPC_ENC_CODEWRD_109_reg_model LDPC_ENC_CODEWRD_109;
    rand LDPC_ENC_CODEWRD_110_reg_model LDPC_ENC_CODEWRD_110;
    rand LDPC_ENC_CODEWRD_111_reg_model LDPC_ENC_CODEWRD_111;
    rand LDPC_ENC_CODEWRD_112_reg_model LDPC_ENC_CODEWRD_112;
    rand LDPC_ENC_CODEWRD_113_reg_model LDPC_ENC_CODEWRD_113;
    rand LDPC_ENC_CODEWRD_114_reg_model LDPC_ENC_CODEWRD_114;
    rand LDPC_ENC_CODEWRD_115_reg_model LDPC_ENC_CODEWRD_115;
    rand LDPC_ENC_CODEWRD_116_reg_model LDPC_ENC_CODEWRD_116;
    rand LDPC_ENC_CODEWRD_117_reg_model LDPC_ENC_CODEWRD_117;
    rand LDPC_ENC_CODEWRD_118_reg_model LDPC_ENC_CODEWRD_118;
    rand LDPC_ENC_CODEWRD_119_reg_model LDPC_ENC_CODEWRD_119;
    rand LDPC_ENC_CODEWRD_120_reg_model LDPC_ENC_CODEWRD_120;
    rand LDPC_ENC_CODEWRD_121_reg_model LDPC_ENC_CODEWRD_121;
    rand LDPC_ENC_CODEWRD_122_reg_model LDPC_ENC_CODEWRD_122;
    rand LDPC_ENC_CODEWRD_123_reg_model LDPC_ENC_CODEWRD_123;
    rand LDPC_ENC_CODEWRD_124_reg_model LDPC_ENC_CODEWRD_124;
    rand LDPC_ENC_CODEWRD_125_reg_model LDPC_ENC_CODEWRD_125;
    rand LDPC_ENC_CODEWRD_126_reg_model LDPC_ENC_CODEWRD_126;
    rand LDPC_ENC_CODEWRD_127_reg_model LDPC_ENC_CODEWRD_127;
    rand LDPC_ENC_CODEWRD_128_reg_model LDPC_ENC_CODEWRD_128;
    rand LDPC_ENC_CODEWRD_129_reg_model LDPC_ENC_CODEWRD_129;
    rand LDPC_ENC_CODEWRD_130_reg_model LDPC_ENC_CODEWRD_130;
    rand LDPC_ENC_CODEWRD_131_reg_model LDPC_ENC_CODEWRD_131;
    rand LDPC_ENC_CODEWRD_132_reg_model LDPC_ENC_CODEWRD_132;
    rand LDPC_ENC_CODEWRD_133_reg_model LDPC_ENC_CODEWRD_133;
    rand LDPC_ENC_CODEWRD_134_reg_model LDPC_ENC_CODEWRD_134;
    rand LDPC_ENC_CODEWRD_135_reg_model LDPC_ENC_CODEWRD_135;
    rand LDPC_ENC_CODEWRD_136_reg_model LDPC_ENC_CODEWRD_136;
    rand LDPC_ENC_CODEWRD_137_reg_model LDPC_ENC_CODEWRD_137;
    rand LDPC_ENC_CODEWRD_138_reg_model LDPC_ENC_CODEWRD_138;
    rand LDPC_ENC_CODEWRD_139_reg_model LDPC_ENC_CODEWRD_139;
    rand LDPC_ENC_CODEWRD_140_reg_model LDPC_ENC_CODEWRD_140;
    rand LDPC_ENC_CODEWRD_141_reg_model LDPC_ENC_CODEWRD_141;
    rand LDPC_ENC_CODEWRD_142_reg_model LDPC_ENC_CODEWRD_142;
    rand LDPC_ENC_CODEWRD_143_reg_model LDPC_ENC_CODEWRD_143;
    rand LDPC_ENC_CODEWRD_144_reg_model LDPC_ENC_CODEWRD_144;
    rand LDPC_ENC_CODEWRD_145_reg_model LDPC_ENC_CODEWRD_145;
    rand LDPC_ENC_CODEWRD_146_reg_model LDPC_ENC_CODEWRD_146;
    rand LDPC_ENC_CODEWRD_147_reg_model LDPC_ENC_CODEWRD_147;
    rand LDPC_ENC_CODEWRD_148_reg_model LDPC_ENC_CODEWRD_148;
    rand LDPC_ENC_CODEWRD_149_reg_model LDPC_ENC_CODEWRD_149;
    rand LDPC_ENC_CODEWRD_150_reg_model LDPC_ENC_CODEWRD_150;
    rand LDPC_ENC_CODEWRD_151_reg_model LDPC_ENC_CODEWRD_151;
    rand LDPC_ENC_CODEWRD_152_reg_model LDPC_ENC_CODEWRD_152;
    rand LDPC_ENC_CODEWRD_153_reg_model LDPC_ENC_CODEWRD_153;
    rand LDPC_ENC_CODEWRD_154_reg_model LDPC_ENC_CODEWRD_154;
    rand LDPC_ENC_CODEWRD_155_reg_model LDPC_ENC_CODEWRD_155;
    rand LDPC_ENC_CODEWRD_156_reg_model LDPC_ENC_CODEWRD_156;
    rand LDPC_ENC_CODEWRD_157_reg_model LDPC_ENC_CODEWRD_157;
    rand LDPC_ENC_CODEWRD_158_reg_model LDPC_ENC_CODEWRD_158;
    rand LDPC_ENC_CODEWRD_159_reg_model LDPC_ENC_CODEWRD_159;
    rand LDPC_ENC_CODEWRD_160_reg_model LDPC_ENC_CODEWRD_160;
    rand LDPC_ENC_CODEWRD_161_reg_model LDPC_ENC_CODEWRD_161;
    rand LDPC_ENC_CODEWRD_162_reg_model LDPC_ENC_CODEWRD_162;
    rand LDPC_ENC_CODEWRD_163_reg_model LDPC_ENC_CODEWRD_163;
    rand LDPC_ENC_CODEWRD_164_reg_model LDPC_ENC_CODEWRD_164;
    rand LDPC_ENC_CODEWRD_165_reg_model LDPC_ENC_CODEWRD_165;
    rand LDPC_ENC_CODEWRD_166_reg_model LDPC_ENC_CODEWRD_166;
    rand LDPC_ENC_CODEWRD_167_reg_model LDPC_ENC_CODEWRD_167;
    rand LDPC_ENC_CODEWRD_168_reg_model LDPC_ENC_CODEWRD_168;
    rand LDPC_ENC_CODEWRD_169_reg_model LDPC_ENC_CODEWRD_169;
    rand LDPC_ENC_CODEWRD_170_reg_model LDPC_ENC_CODEWRD_170;
    rand LDPC_ENC_CODEWRD_171_reg_model LDPC_ENC_CODEWRD_171;
    rand LDPC_ENC_CODEWRD_172_reg_model LDPC_ENC_CODEWRD_172;
    rand LDPC_ENC_CODEWRD_173_reg_model LDPC_ENC_CODEWRD_173;
    rand LDPC_ENC_CODEWRD_174_reg_model LDPC_ENC_CODEWRD_174;
    rand LDPC_ENC_CODEWRD_175_reg_model LDPC_ENC_CODEWRD_175;
    rand LDPC_ENC_CODEWRD_176_reg_model LDPC_ENC_CODEWRD_176;
    rand LDPC_ENC_CODEWRD_177_reg_model LDPC_ENC_CODEWRD_177;
    rand LDPC_ENC_CODEWRD_178_reg_model LDPC_ENC_CODEWRD_178;
    rand LDPC_ENC_CODEWRD_179_reg_model LDPC_ENC_CODEWRD_179;
    rand LDPC_ENC_CODEWRD_180_reg_model LDPC_ENC_CODEWRD_180;
    rand LDPC_ENC_CODEWRD_181_reg_model LDPC_ENC_CODEWRD_181;
    rand LDPC_ENC_CODEWRD_182_reg_model LDPC_ENC_CODEWRD_182;
    rand LDPC_ENC_CODEWRD_183_reg_model LDPC_ENC_CODEWRD_183;
    rand LDPC_ENC_CODEWRD_184_reg_model LDPC_ENC_CODEWRD_184;
    rand LDPC_ENC_CODEWRD_185_reg_model LDPC_ENC_CODEWRD_185;
    rand LDPC_ENC_CODEWRD_186_reg_model LDPC_ENC_CODEWRD_186;
    rand LDPC_ENC_CODEWRD_187_reg_model LDPC_ENC_CODEWRD_187;
    rand LDPC_ENC_CODEWRD_188_reg_model LDPC_ENC_CODEWRD_188;
    rand LDPC_ENC_CODEWRD_189_reg_model LDPC_ENC_CODEWRD_189;
    rand LDPC_ENC_CODEWRD_190_reg_model LDPC_ENC_CODEWRD_190;
    rand LDPC_ENC_CODEWRD_191_reg_model LDPC_ENC_CODEWRD_191;
    rand LDPC_ENC_CODEWRD_192_reg_model LDPC_ENC_CODEWRD_192;
    rand LDPC_ENC_CODEWRD_193_reg_model LDPC_ENC_CODEWRD_193;
    rand LDPC_ENC_CODEWRD_194_reg_model LDPC_ENC_CODEWRD_194;
    rand LDPC_ENC_CODEWRD_195_reg_model LDPC_ENC_CODEWRD_195;
    rand LDPC_ENC_CODEWRD_196_reg_model LDPC_ENC_CODEWRD_196;
    rand LDPC_ENC_CODEWRD_197_reg_model LDPC_ENC_CODEWRD_197;
    rand LDPC_ENC_CODEWRD_198_reg_model LDPC_ENC_CODEWRD_198;
    rand LDPC_ENC_CODEWRD_199_reg_model LDPC_ENC_CODEWRD_199;
    rand LDPC_ENC_CODEWRD_200_reg_model LDPC_ENC_CODEWRD_200;
    rand LDPC_ENC_CODEWRD_201_reg_model LDPC_ENC_CODEWRD_201;
    rand LDPC_ENC_CODEWRD_202_reg_model LDPC_ENC_CODEWRD_202;
    rand LDPC_ENC_CODEWRD_203_reg_model LDPC_ENC_CODEWRD_203;
    rand LDPC_ENC_CODEWRD_204_reg_model LDPC_ENC_CODEWRD_204;
    rand LDPC_ENC_CODEWRD_205_reg_model LDPC_ENC_CODEWRD_205;
    rand LDPC_ENC_CODEWRD_206_reg_model LDPC_ENC_CODEWRD_206;
    rand LDPC_ENC_CODEWRD_207_reg_model LDPC_ENC_CODEWRD_207;
    rand LDPC_ENC_CODEWRD_VLD_reg_model LDPC_ENC_CODEWRD_VLD;
    rand LDPC_DEC_CODEWRD_0_reg_model LDPC_DEC_CODEWRD_0;
    rand LDPC_DEC_CODEWRD_1_reg_model LDPC_DEC_CODEWRD_1;
    rand LDPC_DEC_CODEWRD_2_reg_model LDPC_DEC_CODEWRD_2;
    rand LDPC_DEC_CODEWRD_3_reg_model LDPC_DEC_CODEWRD_3;
    rand LDPC_DEC_CODEWRD_4_reg_model LDPC_DEC_CODEWRD_4;
    rand LDPC_DEC_CODEWRD_5_reg_model LDPC_DEC_CODEWRD_5;
    rand LDPC_DEC_CODEWRD_6_reg_model LDPC_DEC_CODEWRD_6;
    rand LDPC_DEC_CODEWRD_7_reg_model LDPC_DEC_CODEWRD_7;
    rand LDPC_DEC_CODEWRD_8_reg_model LDPC_DEC_CODEWRD_8;
    rand LDPC_DEC_CODEWRD_9_reg_model LDPC_DEC_CODEWRD_9;
    rand LDPC_DEC_CODEWRD_10_reg_model LDPC_DEC_CODEWRD_10;
    rand LDPC_DEC_CODEWRD_11_reg_model LDPC_DEC_CODEWRD_11;
    rand LDPC_DEC_CODEWRD_12_reg_model LDPC_DEC_CODEWRD_12;
    rand LDPC_DEC_CODEWRD_13_reg_model LDPC_DEC_CODEWRD_13;
    rand LDPC_DEC_CODEWRD_14_reg_model LDPC_DEC_CODEWRD_14;
    rand LDPC_DEC_CODEWRD_15_reg_model LDPC_DEC_CODEWRD_15;
    rand LDPC_DEC_CODEWRD_16_reg_model LDPC_DEC_CODEWRD_16;
    rand LDPC_DEC_CODEWRD_17_reg_model LDPC_DEC_CODEWRD_17;
    rand LDPC_DEC_CODEWRD_18_reg_model LDPC_DEC_CODEWRD_18;
    rand LDPC_DEC_CODEWRD_19_reg_model LDPC_DEC_CODEWRD_19;
    rand LDPC_DEC_CODEWRD_20_reg_model LDPC_DEC_CODEWRD_20;
    rand LDPC_DEC_CODEWRD_21_reg_model LDPC_DEC_CODEWRD_21;
    rand LDPC_DEC_CODEWRD_22_reg_model LDPC_DEC_CODEWRD_22;
    rand LDPC_DEC_CODEWRD_23_reg_model LDPC_DEC_CODEWRD_23;
    rand LDPC_DEC_CODEWRD_24_reg_model LDPC_DEC_CODEWRD_24;
    rand LDPC_DEC_CODEWRD_25_reg_model LDPC_DEC_CODEWRD_25;
    rand LDPC_DEC_CODEWRD_26_reg_model LDPC_DEC_CODEWRD_26;
    rand LDPC_DEC_CODEWRD_27_reg_model LDPC_DEC_CODEWRD_27;
    rand LDPC_DEC_CODEWRD_28_reg_model LDPC_DEC_CODEWRD_28;
    rand LDPC_DEC_CODEWRD_29_reg_model LDPC_DEC_CODEWRD_29;
    rand LDPC_DEC_CODEWRD_30_reg_model LDPC_DEC_CODEWRD_30;
    rand LDPC_DEC_CODEWRD_31_reg_model LDPC_DEC_CODEWRD_31;
    rand LDPC_DEC_CODEWRD_32_reg_model LDPC_DEC_CODEWRD_32;
    rand LDPC_DEC_CODEWRD_33_reg_model LDPC_DEC_CODEWRD_33;
    rand LDPC_DEC_CODEWRD_34_reg_model LDPC_DEC_CODEWRD_34;
    rand LDPC_DEC_CODEWRD_35_reg_model LDPC_DEC_CODEWRD_35;
    rand LDPC_DEC_CODEWRD_36_reg_model LDPC_DEC_CODEWRD_36;
    rand LDPC_DEC_CODEWRD_37_reg_model LDPC_DEC_CODEWRD_37;
    rand LDPC_DEC_CODEWRD_38_reg_model LDPC_DEC_CODEWRD_38;
    rand LDPC_DEC_CODEWRD_39_reg_model LDPC_DEC_CODEWRD_39;
    rand LDPC_DEC_CODEWRD_40_reg_model LDPC_DEC_CODEWRD_40;
    rand LDPC_DEC_CODEWRD_41_reg_model LDPC_DEC_CODEWRD_41;
    rand LDPC_DEC_CODEWRD_42_reg_model LDPC_DEC_CODEWRD_42;
    rand LDPC_DEC_CODEWRD_43_reg_model LDPC_DEC_CODEWRD_43;
    rand LDPC_DEC_CODEWRD_44_reg_model LDPC_DEC_CODEWRD_44;
    rand LDPC_DEC_CODEWRD_45_reg_model LDPC_DEC_CODEWRD_45;
    rand LDPC_DEC_CODEWRD_46_reg_model LDPC_DEC_CODEWRD_46;
    rand LDPC_DEC_CODEWRD_47_reg_model LDPC_DEC_CODEWRD_47;
    rand LDPC_DEC_CODEWRD_48_reg_model LDPC_DEC_CODEWRD_48;
    rand LDPC_DEC_CODEWRD_49_reg_model LDPC_DEC_CODEWRD_49;
    rand LDPC_DEC_CODEWRD_50_reg_model LDPC_DEC_CODEWRD_50;
    rand LDPC_DEC_CODEWRD_51_reg_model LDPC_DEC_CODEWRD_51;
    rand LDPC_DEC_CODEWRD_52_reg_model LDPC_DEC_CODEWRD_52;
    rand LDPC_DEC_CODEWRD_53_reg_model LDPC_DEC_CODEWRD_53;
    rand LDPC_DEC_CODEWRD_54_reg_model LDPC_DEC_CODEWRD_54;
    rand LDPC_DEC_CODEWRD_55_reg_model LDPC_DEC_CODEWRD_55;
    rand LDPC_DEC_CODEWRD_56_reg_model LDPC_DEC_CODEWRD_56;
    rand LDPC_DEC_CODEWRD_57_reg_model LDPC_DEC_CODEWRD_57;
    rand LDPC_DEC_CODEWRD_58_reg_model LDPC_DEC_CODEWRD_58;
    rand LDPC_DEC_CODEWRD_59_reg_model LDPC_DEC_CODEWRD_59;
    rand LDPC_DEC_CODEWRD_60_reg_model LDPC_DEC_CODEWRD_60;
    rand LDPC_DEC_CODEWRD_61_reg_model LDPC_DEC_CODEWRD_61;
    rand LDPC_DEC_CODEWRD_62_reg_model LDPC_DEC_CODEWRD_62;
    rand LDPC_DEC_CODEWRD_63_reg_model LDPC_DEC_CODEWRD_63;
    rand LDPC_DEC_CODEWRD_64_reg_model LDPC_DEC_CODEWRD_64;
    rand LDPC_DEC_CODEWRD_65_reg_model LDPC_DEC_CODEWRD_65;
    rand LDPC_DEC_CODEWRD_66_reg_model LDPC_DEC_CODEWRD_66;
    rand LDPC_DEC_CODEWRD_67_reg_model LDPC_DEC_CODEWRD_67;
    rand LDPC_DEC_CODEWRD_68_reg_model LDPC_DEC_CODEWRD_68;
    rand LDPC_DEC_CODEWRD_69_reg_model LDPC_DEC_CODEWRD_69;
    rand LDPC_DEC_CODEWRD_70_reg_model LDPC_DEC_CODEWRD_70;
    rand LDPC_DEC_CODEWRD_71_reg_model LDPC_DEC_CODEWRD_71;
    rand LDPC_DEC_CODEWRD_72_reg_model LDPC_DEC_CODEWRD_72;
    rand LDPC_DEC_CODEWRD_73_reg_model LDPC_DEC_CODEWRD_73;
    rand LDPC_DEC_CODEWRD_74_reg_model LDPC_DEC_CODEWRD_74;
    rand LDPC_DEC_CODEWRD_75_reg_model LDPC_DEC_CODEWRD_75;
    rand LDPC_DEC_CODEWRD_76_reg_model LDPC_DEC_CODEWRD_76;
    rand LDPC_DEC_CODEWRD_77_reg_model LDPC_DEC_CODEWRD_77;
    rand LDPC_DEC_CODEWRD_78_reg_model LDPC_DEC_CODEWRD_78;
    rand LDPC_DEC_CODEWRD_79_reg_model LDPC_DEC_CODEWRD_79;
    rand LDPC_DEC_CODEWRD_80_reg_model LDPC_DEC_CODEWRD_80;
    rand LDPC_DEC_CODEWRD_81_reg_model LDPC_DEC_CODEWRD_81;
    rand LDPC_DEC_CODEWRD_82_reg_model LDPC_DEC_CODEWRD_82;
    rand LDPC_DEC_CODEWRD_83_reg_model LDPC_DEC_CODEWRD_83;
    rand LDPC_DEC_CODEWRD_84_reg_model LDPC_DEC_CODEWRD_84;
    rand LDPC_DEC_CODEWRD_85_reg_model LDPC_DEC_CODEWRD_85;
    rand LDPC_DEC_CODEWRD_86_reg_model LDPC_DEC_CODEWRD_86;
    rand LDPC_DEC_CODEWRD_87_reg_model LDPC_DEC_CODEWRD_87;
    rand LDPC_DEC_CODEWRD_88_reg_model LDPC_DEC_CODEWRD_88;
    rand LDPC_DEC_CODEWRD_89_reg_model LDPC_DEC_CODEWRD_89;
    rand LDPC_DEC_CODEWRD_90_reg_model LDPC_DEC_CODEWRD_90;
    rand LDPC_DEC_CODEWRD_91_reg_model LDPC_DEC_CODEWRD_91;
    rand LDPC_DEC_CODEWRD_92_reg_model LDPC_DEC_CODEWRD_92;
    rand LDPC_DEC_CODEWRD_93_reg_model LDPC_DEC_CODEWRD_93;
    rand LDPC_DEC_CODEWRD_94_reg_model LDPC_DEC_CODEWRD_94;
    rand LDPC_DEC_CODEWRD_95_reg_model LDPC_DEC_CODEWRD_95;
    rand LDPC_DEC_CODEWRD_96_reg_model LDPC_DEC_CODEWRD_96;
    rand LDPC_DEC_CODEWRD_97_reg_model LDPC_DEC_CODEWRD_97;
    rand LDPC_DEC_CODEWRD_98_reg_model LDPC_DEC_CODEWRD_98;
    rand LDPC_DEC_CODEWRD_99_reg_model LDPC_DEC_CODEWRD_99;
    rand LDPC_DEC_CODEWRD_100_reg_model LDPC_DEC_CODEWRD_100;
    rand LDPC_DEC_CODEWRD_101_reg_model LDPC_DEC_CODEWRD_101;
    rand LDPC_DEC_CODEWRD_102_reg_model LDPC_DEC_CODEWRD_102;
    rand LDPC_DEC_CODEWRD_103_reg_model LDPC_DEC_CODEWRD_103;
    rand LDPC_DEC_CODEWRD_104_reg_model LDPC_DEC_CODEWRD_104;
    rand LDPC_DEC_CODEWRD_105_reg_model LDPC_DEC_CODEWRD_105;
    rand LDPC_DEC_CODEWRD_106_reg_model LDPC_DEC_CODEWRD_106;
    rand LDPC_DEC_CODEWRD_107_reg_model LDPC_DEC_CODEWRD_107;
    rand LDPC_DEC_CODEWRD_108_reg_model LDPC_DEC_CODEWRD_108;
    rand LDPC_DEC_CODEWRD_109_reg_model LDPC_DEC_CODEWRD_109;
    rand LDPC_DEC_CODEWRD_110_reg_model LDPC_DEC_CODEWRD_110;
    rand LDPC_DEC_CODEWRD_111_reg_model LDPC_DEC_CODEWRD_111;
    rand LDPC_DEC_CODEWRD_112_reg_model LDPC_DEC_CODEWRD_112;
    rand LDPC_DEC_CODEWRD_113_reg_model LDPC_DEC_CODEWRD_113;
    rand LDPC_DEC_CODEWRD_114_reg_model LDPC_DEC_CODEWRD_114;
    rand LDPC_DEC_CODEWRD_115_reg_model LDPC_DEC_CODEWRD_115;
    rand LDPC_DEC_CODEWRD_116_reg_model LDPC_DEC_CODEWRD_116;
    rand LDPC_DEC_CODEWRD_117_reg_model LDPC_DEC_CODEWRD_117;
    rand LDPC_DEC_CODEWRD_118_reg_model LDPC_DEC_CODEWRD_118;
    rand LDPC_DEC_CODEWRD_119_reg_model LDPC_DEC_CODEWRD_119;
    rand LDPC_DEC_CODEWRD_120_reg_model LDPC_DEC_CODEWRD_120;
    rand LDPC_DEC_CODEWRD_121_reg_model LDPC_DEC_CODEWRD_121;
    rand LDPC_DEC_CODEWRD_122_reg_model LDPC_DEC_CODEWRD_122;
    rand LDPC_DEC_CODEWRD_123_reg_model LDPC_DEC_CODEWRD_123;
    rand LDPC_DEC_CODEWRD_124_reg_model LDPC_DEC_CODEWRD_124;
    rand LDPC_DEC_CODEWRD_125_reg_model LDPC_DEC_CODEWRD_125;
    rand LDPC_DEC_CODEWRD_126_reg_model LDPC_DEC_CODEWRD_126;
    rand LDPC_DEC_CODEWRD_127_reg_model LDPC_DEC_CODEWRD_127;
    rand LDPC_DEC_CODEWRD_128_reg_model LDPC_DEC_CODEWRD_128;
    rand LDPC_DEC_CODEWRD_129_reg_model LDPC_DEC_CODEWRD_129;
    rand LDPC_DEC_CODEWRD_130_reg_model LDPC_DEC_CODEWRD_130;
    rand LDPC_DEC_CODEWRD_131_reg_model LDPC_DEC_CODEWRD_131;
    rand LDPC_DEC_CODEWRD_132_reg_model LDPC_DEC_CODEWRD_132;
    rand LDPC_DEC_CODEWRD_133_reg_model LDPC_DEC_CODEWRD_133;
    rand LDPC_DEC_CODEWRD_134_reg_model LDPC_DEC_CODEWRD_134;
    rand LDPC_DEC_CODEWRD_135_reg_model LDPC_DEC_CODEWRD_135;
    rand LDPC_DEC_CODEWRD_136_reg_model LDPC_DEC_CODEWRD_136;
    rand LDPC_DEC_CODEWRD_137_reg_model LDPC_DEC_CODEWRD_137;
    rand LDPC_DEC_CODEWRD_138_reg_model LDPC_DEC_CODEWRD_138;
    rand LDPC_DEC_CODEWRD_139_reg_model LDPC_DEC_CODEWRD_139;
    rand LDPC_DEC_CODEWRD_140_reg_model LDPC_DEC_CODEWRD_140;
    rand LDPC_DEC_CODEWRD_141_reg_model LDPC_DEC_CODEWRD_141;
    rand LDPC_DEC_CODEWRD_142_reg_model LDPC_DEC_CODEWRD_142;
    rand LDPC_DEC_CODEWRD_143_reg_model LDPC_DEC_CODEWRD_143;
    rand LDPC_DEC_CODEWRD_144_reg_model LDPC_DEC_CODEWRD_144;
    rand LDPC_DEC_CODEWRD_145_reg_model LDPC_DEC_CODEWRD_145;
    rand LDPC_DEC_CODEWRD_146_reg_model LDPC_DEC_CODEWRD_146;
    rand LDPC_DEC_CODEWRD_147_reg_model LDPC_DEC_CODEWRD_147;
    rand LDPC_DEC_CODEWRD_148_reg_model LDPC_DEC_CODEWRD_148;
    rand LDPC_DEC_CODEWRD_149_reg_model LDPC_DEC_CODEWRD_149;
    rand LDPC_DEC_CODEWRD_150_reg_model LDPC_DEC_CODEWRD_150;
    rand LDPC_DEC_CODEWRD_151_reg_model LDPC_DEC_CODEWRD_151;
    rand LDPC_DEC_CODEWRD_152_reg_model LDPC_DEC_CODEWRD_152;
    rand LDPC_DEC_CODEWRD_153_reg_model LDPC_DEC_CODEWRD_153;
    rand LDPC_DEC_CODEWRD_154_reg_model LDPC_DEC_CODEWRD_154;
    rand LDPC_DEC_CODEWRD_155_reg_model LDPC_DEC_CODEWRD_155;
    rand LDPC_DEC_CODEWRD_156_reg_model LDPC_DEC_CODEWRD_156;
    rand LDPC_DEC_CODEWRD_157_reg_model LDPC_DEC_CODEWRD_157;
    rand LDPC_DEC_CODEWRD_158_reg_model LDPC_DEC_CODEWRD_158;
    rand LDPC_DEC_CODEWRD_159_reg_model LDPC_DEC_CODEWRD_159;
    rand LDPC_DEC_CODEWRD_160_reg_model LDPC_DEC_CODEWRD_160;
    rand LDPC_DEC_CODEWRD_161_reg_model LDPC_DEC_CODEWRD_161;
    rand LDPC_DEC_CODEWRD_162_reg_model LDPC_DEC_CODEWRD_162;
    rand LDPC_DEC_CODEWRD_163_reg_model LDPC_DEC_CODEWRD_163;
    rand LDPC_DEC_CODEWRD_164_reg_model LDPC_DEC_CODEWRD_164;
    rand LDPC_DEC_CODEWRD_165_reg_model LDPC_DEC_CODEWRD_165;
    rand LDPC_DEC_CODEWRD_166_reg_model LDPC_DEC_CODEWRD_166;
    rand LDPC_DEC_CODEWRD_167_reg_model LDPC_DEC_CODEWRD_167;
    rand LDPC_DEC_CODEWRD_168_reg_model LDPC_DEC_CODEWRD_168;
    rand LDPC_DEC_CODEWRD_169_reg_model LDPC_DEC_CODEWRD_169;
    rand LDPC_DEC_CODEWRD_170_reg_model LDPC_DEC_CODEWRD_170;
    rand LDPC_DEC_CODEWRD_171_reg_model LDPC_DEC_CODEWRD_171;
    rand LDPC_DEC_CODEWRD_172_reg_model LDPC_DEC_CODEWRD_172;
    rand LDPC_DEC_CODEWRD_173_reg_model LDPC_DEC_CODEWRD_173;
    rand LDPC_DEC_CODEWRD_174_reg_model LDPC_DEC_CODEWRD_174;
    rand LDPC_DEC_CODEWRD_175_reg_model LDPC_DEC_CODEWRD_175;
    rand LDPC_DEC_CODEWRD_176_reg_model LDPC_DEC_CODEWRD_176;
    rand LDPC_DEC_CODEWRD_177_reg_model LDPC_DEC_CODEWRD_177;
    rand LDPC_DEC_CODEWRD_178_reg_model LDPC_DEC_CODEWRD_178;
    rand LDPC_DEC_CODEWRD_179_reg_model LDPC_DEC_CODEWRD_179;
    rand LDPC_DEC_CODEWRD_180_reg_model LDPC_DEC_CODEWRD_180;
    rand LDPC_DEC_CODEWRD_181_reg_model LDPC_DEC_CODEWRD_181;
    rand LDPC_DEC_CODEWRD_182_reg_model LDPC_DEC_CODEWRD_182;
    rand LDPC_DEC_CODEWRD_183_reg_model LDPC_DEC_CODEWRD_183;
    rand LDPC_DEC_CODEWRD_184_reg_model LDPC_DEC_CODEWRD_184;
    rand LDPC_DEC_CODEWRD_185_reg_model LDPC_DEC_CODEWRD_185;
    rand LDPC_DEC_CODEWRD_186_reg_model LDPC_DEC_CODEWRD_186;
    rand LDPC_DEC_CODEWRD_187_reg_model LDPC_DEC_CODEWRD_187;
    rand LDPC_DEC_CODEWRD_188_reg_model LDPC_DEC_CODEWRD_188;
    rand LDPC_DEC_CODEWRD_189_reg_model LDPC_DEC_CODEWRD_189;
    rand LDPC_DEC_CODEWRD_190_reg_model LDPC_DEC_CODEWRD_190;
    rand LDPC_DEC_CODEWRD_191_reg_model LDPC_DEC_CODEWRD_191;
    rand LDPC_DEC_CODEWRD_192_reg_model LDPC_DEC_CODEWRD_192;
    rand LDPC_DEC_CODEWRD_193_reg_model LDPC_DEC_CODEWRD_193;
    rand LDPC_DEC_CODEWRD_194_reg_model LDPC_DEC_CODEWRD_194;
    rand LDPC_DEC_CODEWRD_195_reg_model LDPC_DEC_CODEWRD_195;
    rand LDPC_DEC_CODEWRD_196_reg_model LDPC_DEC_CODEWRD_196;
    rand LDPC_DEC_CODEWRD_197_reg_model LDPC_DEC_CODEWRD_197;
    rand LDPC_DEC_CODEWRD_198_reg_model LDPC_DEC_CODEWRD_198;
    rand LDPC_DEC_CODEWRD_199_reg_model LDPC_DEC_CODEWRD_199;
    rand LDPC_DEC_CODEWRD_200_reg_model LDPC_DEC_CODEWRD_200;
    rand LDPC_DEC_CODEWRD_201_reg_model LDPC_DEC_CODEWRD_201;
    rand LDPC_DEC_CODEWRD_202_reg_model LDPC_DEC_CODEWRD_202;
    rand LDPC_DEC_CODEWRD_203_reg_model LDPC_DEC_CODEWRD_203;
    rand LDPC_DEC_CODEWRD_204_reg_model LDPC_DEC_CODEWRD_204;
    rand LDPC_DEC_CODEWRD_205_reg_model LDPC_DEC_CODEWRD_205;
    rand LDPC_DEC_CODEWRD_206_reg_model LDPC_DEC_CODEWRD_206;
    rand LDPC_DEC_CODEWRD_207_reg_model LDPC_DEC_CODEWRD_207;
    rand LDPC_DEC_EXPSYND_0_reg_model LDPC_DEC_EXPSYND_0;
    rand LDPC_DEC_EXPSYND_1_reg_model LDPC_DEC_EXPSYND_1;
    rand LDPC_DEC_EXPSYND_2_reg_model LDPC_DEC_EXPSYND_2;
    rand LDPC_DEC_EXPSYND_3_reg_model LDPC_DEC_EXPSYND_3;
    rand LDPC_DEC_EXPSYND_4_reg_model LDPC_DEC_EXPSYND_4;
    rand LDPC_DEC_EXPSYND_5_reg_model LDPC_DEC_EXPSYND_5;
    rand LDPC_DEC_EXPSYND_6_reg_model LDPC_DEC_EXPSYND_6;
    rand LDPC_DEC_EXPSYND_7_reg_model LDPC_DEC_EXPSYND_7;
    rand LDPC_DEC_EXPSYND_8_reg_model LDPC_DEC_EXPSYND_8;
    rand LDPC_DEC_EXPSYND_9_reg_model LDPC_DEC_EXPSYND_9;
    rand LDPC_DEC_EXPSYND_10_reg_model LDPC_DEC_EXPSYND_10;
    rand LDPC_DEC_EXPSYND_11_reg_model LDPC_DEC_EXPSYND_11;
    rand LDPC_DEC_EXPSYND_12_reg_model LDPC_DEC_EXPSYND_12;
    rand LDPC_DEC_EXPSYND_13_reg_model LDPC_DEC_EXPSYND_13;
    rand LDPC_DEC_EXPSYND_14_reg_model LDPC_DEC_EXPSYND_14;
    rand LDPC_DEC_EXPSYND_15_reg_model LDPC_DEC_EXPSYND_15;
    rand LDPC_DEC_EXPSYND_16_reg_model LDPC_DEC_EXPSYND_16;
    rand LDPC_DEC_EXPSYND_17_reg_model LDPC_DEC_EXPSYND_17;
    rand LDPC_DEC_EXPSYND_18_reg_model LDPC_DEC_EXPSYND_18;
    rand LDPC_DEC_EXPSYND_19_reg_model LDPC_DEC_EXPSYND_19;
    rand LDPC_DEC_EXPSYND_20_reg_model LDPC_DEC_EXPSYND_20;
    rand LDPC_DEC_EXPSYND_21_reg_model LDPC_DEC_EXPSYND_21;
    rand LDPC_DEC_EXPSYND_22_reg_model LDPC_DEC_EXPSYND_22;
    rand LDPC_DEC_EXPSYND_23_reg_model LDPC_DEC_EXPSYND_23;
    rand LDPC_DEC_EXPSYND_24_reg_model LDPC_DEC_EXPSYND_24;
    rand LDPC_DEC_EXPSYND_25_reg_model LDPC_DEC_EXPSYND_25;
    rand LDPC_DEC_EXPSYND_26_reg_model LDPC_DEC_EXPSYND_26;
    rand LDPC_DEC_EXPSYND_27_reg_model LDPC_DEC_EXPSYND_27;
    rand LDPC_DEC_EXPSYND_28_reg_model LDPC_DEC_EXPSYND_28;
    rand LDPC_DEC_EXPSYND_29_reg_model LDPC_DEC_EXPSYND_29;
    rand LDPC_DEC_EXPSYND_30_reg_model LDPC_DEC_EXPSYND_30;
    rand LDPC_DEC_EXPSYND_31_reg_model LDPC_DEC_EXPSYND_31;
    rand LDPC_DEC_EXPSYND_32_reg_model LDPC_DEC_EXPSYND_32;
    rand LDPC_DEC_EXPSYND_33_reg_model LDPC_DEC_EXPSYND_33;
    rand LDPC_DEC_EXPSYND_34_reg_model LDPC_DEC_EXPSYND_34;
    rand LDPC_DEC_EXPSYND_35_reg_model LDPC_DEC_EXPSYND_35;
    rand LDPC_DEC_EXPSYND_36_reg_model LDPC_DEC_EXPSYND_36;
    rand LDPC_DEC_EXPSYND_37_reg_model LDPC_DEC_EXPSYND_37;
    rand LDPC_DEC_EXPSYND_38_reg_model LDPC_DEC_EXPSYND_38;
    rand LDPC_DEC_EXPSYND_39_reg_model LDPC_DEC_EXPSYND_39;
    rand LDPC_DEC_EXPSYND_40_reg_model LDPC_DEC_EXPSYND_40;
    rand LDPC_DEC_EXPSYND_41_reg_model LDPC_DEC_EXPSYND_41;
    rand LDPC_DEC_EXPSYND_42_reg_model LDPC_DEC_EXPSYND_42;
    rand LDPC_DEC_EXPSYND_43_reg_model LDPC_DEC_EXPSYND_43;
    rand LDPC_DEC_EXPSYND_44_reg_model LDPC_DEC_EXPSYND_44;
    rand LDPC_DEC_EXPSYND_45_reg_model LDPC_DEC_EXPSYND_45;
    rand LDPC_DEC_EXPSYND_46_reg_model LDPC_DEC_EXPSYND_46;
    rand LDPC_DEC_EXPSYND_47_reg_model LDPC_DEC_EXPSYND_47;
    rand LDPC_DEC_EXPSYND_48_reg_model LDPC_DEC_EXPSYND_48;
    rand LDPC_DEC_EXPSYND_49_reg_model LDPC_DEC_EXPSYND_49;
    rand LDPC_DEC_EXPSYND_50_reg_model LDPC_DEC_EXPSYND_50;
    rand LDPC_DEC_EXPSYND_51_reg_model LDPC_DEC_EXPSYND_51;
    rand LDPC_DEC_EXPSYND_52_reg_model LDPC_DEC_EXPSYND_52;
    rand LDPC_DEC_EXPSYND_53_reg_model LDPC_DEC_EXPSYND_53;
    rand LDPC_DEC_EXPSYND_54_reg_model LDPC_DEC_EXPSYND_54;
    rand LDPC_DEC_EXPSYND_55_reg_model LDPC_DEC_EXPSYND_55;
    rand LDPC_DEC_EXPSYND_56_reg_model LDPC_DEC_EXPSYND_56;
    rand LDPC_DEC_EXPSYND_57_reg_model LDPC_DEC_EXPSYND_57;
    rand LDPC_DEC_EXPSYND_58_reg_model LDPC_DEC_EXPSYND_58;
    rand LDPC_DEC_EXPSYND_59_reg_model LDPC_DEC_EXPSYND_59;
    rand LDPC_DEC_EXPSYND_60_reg_model LDPC_DEC_EXPSYND_60;
    rand LDPC_DEC_EXPSYND_61_reg_model LDPC_DEC_EXPSYND_61;
    rand LDPC_DEC_EXPSYND_62_reg_model LDPC_DEC_EXPSYND_62;
    rand LDPC_DEC_EXPSYND_63_reg_model LDPC_DEC_EXPSYND_63;
    rand LDPC_DEC_EXPSYND_64_reg_model LDPC_DEC_EXPSYND_64;
    rand LDPC_DEC_EXPSYND_65_reg_model LDPC_DEC_EXPSYND_65;
    rand LDPC_DEC_EXPSYND_66_reg_model LDPC_DEC_EXPSYND_66;
    rand LDPC_DEC_EXPSYND_67_reg_model LDPC_DEC_EXPSYND_67;
    rand LDPC_DEC_EXPSYND_68_reg_model LDPC_DEC_EXPSYND_68;
    rand LDPC_DEC_EXPSYND_69_reg_model LDPC_DEC_EXPSYND_69;
    rand LDPC_DEC_EXPSYND_70_reg_model LDPC_DEC_EXPSYND_70;
    rand LDPC_DEC_EXPSYND_71_reg_model LDPC_DEC_EXPSYND_71;
    rand LDPC_DEC_EXPSYND_72_reg_model LDPC_DEC_EXPSYND_72;
    rand LDPC_DEC_EXPSYND_73_reg_model LDPC_DEC_EXPSYND_73;
    rand LDPC_DEC_EXPSYND_74_reg_model LDPC_DEC_EXPSYND_74;
    rand LDPC_DEC_EXPSYND_75_reg_model LDPC_DEC_EXPSYND_75;
    rand LDPC_DEC_EXPSYND_76_reg_model LDPC_DEC_EXPSYND_76;
    rand LDPC_DEC_EXPSYND_77_reg_model LDPC_DEC_EXPSYND_77;
    rand LDPC_DEC_EXPSYND_78_reg_model LDPC_DEC_EXPSYND_78;
    rand LDPC_DEC_EXPSYND_79_reg_model LDPC_DEC_EXPSYND_79;
    rand LDPC_DEC_EXPSYND_80_reg_model LDPC_DEC_EXPSYND_80;
    rand LDPC_DEC_EXPSYND_81_reg_model LDPC_DEC_EXPSYND_81;
    rand LDPC_DEC_EXPSYND_82_reg_model LDPC_DEC_EXPSYND_82;
    rand LDPC_DEC_EXPSYND_83_reg_model LDPC_DEC_EXPSYND_83;
    rand LDPC_DEC_EXPSYND_84_reg_model LDPC_DEC_EXPSYND_84;
    rand LDPC_DEC_EXPSYND_85_reg_model LDPC_DEC_EXPSYND_85;
    rand LDPC_DEC_EXPSYND_86_reg_model LDPC_DEC_EXPSYND_86;
    rand LDPC_DEC_EXPSYND_87_reg_model LDPC_DEC_EXPSYND_87;
    rand LDPC_DEC_EXPSYND_88_reg_model LDPC_DEC_EXPSYND_88;
    rand LDPC_DEC_EXPSYND_89_reg_model LDPC_DEC_EXPSYND_89;
    rand LDPC_DEC_EXPSYND_90_reg_model LDPC_DEC_EXPSYND_90;
    rand LDPC_DEC_EXPSYND_91_reg_model LDPC_DEC_EXPSYND_91;
    rand LDPC_DEC_EXPSYND_92_reg_model LDPC_DEC_EXPSYND_92;
    rand LDPC_DEC_EXPSYND_93_reg_model LDPC_DEC_EXPSYND_93;
    rand LDPC_DEC_EXPSYND_94_reg_model LDPC_DEC_EXPSYND_94;
    rand LDPC_DEC_EXPSYND_95_reg_model LDPC_DEC_EXPSYND_95;
    rand LDPC_DEC_EXPSYND_96_reg_model LDPC_DEC_EXPSYND_96;
    rand LDPC_DEC_EXPSYND_97_reg_model LDPC_DEC_EXPSYND_97;
    rand LDPC_DEC_EXPSYND_98_reg_model LDPC_DEC_EXPSYND_98;
    rand LDPC_DEC_EXPSYND_99_reg_model LDPC_DEC_EXPSYND_99;
    rand LDPC_DEC_EXPSYND_100_reg_model LDPC_DEC_EXPSYND_100;
    rand LDPC_DEC_EXPSYND_101_reg_model LDPC_DEC_EXPSYND_101;
    rand LDPC_DEC_EXPSYND_102_reg_model LDPC_DEC_EXPSYND_102;
    rand LDPC_DEC_EXPSYND_103_reg_model LDPC_DEC_EXPSYND_103;
    rand LDPC_DEC_EXPSYND_104_reg_model LDPC_DEC_EXPSYND_104;
    rand LDPC_DEC_EXPSYND_105_reg_model LDPC_DEC_EXPSYND_105;
    rand LDPC_DEC_EXPSYND_106_reg_model LDPC_DEC_EXPSYND_106;
    rand LDPC_DEC_EXPSYND_107_reg_model LDPC_DEC_EXPSYND_107;
    rand LDPC_DEC_EXPSYND_108_reg_model LDPC_DEC_EXPSYND_108;
    rand LDPC_DEC_EXPSYND_109_reg_model LDPC_DEC_EXPSYND_109;
    rand LDPC_DEC_EXPSYND_110_reg_model LDPC_DEC_EXPSYND_110;
    rand LDPC_DEC_EXPSYND_111_reg_model LDPC_DEC_EXPSYND_111;
    rand LDPC_DEC_EXPSYND_112_reg_model LDPC_DEC_EXPSYND_112;
    rand LDPC_DEC_EXPSYND_113_reg_model LDPC_DEC_EXPSYND_113;
    rand LDPC_DEC_EXPSYND_114_reg_model LDPC_DEC_EXPSYND_114;
    rand LDPC_DEC_EXPSYND_115_reg_model LDPC_DEC_EXPSYND_115;
    rand LDPC_DEC_EXPSYND_116_reg_model LDPC_DEC_EXPSYND_116;
    rand LDPC_DEC_EXPSYND_117_reg_model LDPC_DEC_EXPSYND_117;
    rand LDPC_DEC_EXPSYND_118_reg_model LDPC_DEC_EXPSYND_118;
    rand LDPC_DEC_EXPSYND_119_reg_model LDPC_DEC_EXPSYND_119;
    rand LDPC_DEC_EXPSYND_120_reg_model LDPC_DEC_EXPSYND_120;
    rand LDPC_DEC_EXPSYND_121_reg_model LDPC_DEC_EXPSYND_121;
    rand LDPC_DEC_EXPSYND_122_reg_model LDPC_DEC_EXPSYND_122;
    rand LDPC_DEC_EXPSYND_123_reg_model LDPC_DEC_EXPSYND_123;
    rand LDPC_DEC_EXPSYND_124_reg_model LDPC_DEC_EXPSYND_124;
    rand LDPC_DEC_EXPSYND_125_reg_model LDPC_DEC_EXPSYND_125;
    rand LDPC_DEC_EXPSYND_126_reg_model LDPC_DEC_EXPSYND_126;
    rand LDPC_DEC_EXPSYND_127_reg_model LDPC_DEC_EXPSYND_127;
    rand LDPC_DEC_EXPSYND_128_reg_model LDPC_DEC_EXPSYND_128;
    rand LDPC_DEC_EXPSYND_129_reg_model LDPC_DEC_EXPSYND_129;
    rand LDPC_DEC_EXPSYND_130_reg_model LDPC_DEC_EXPSYND_130;
    rand LDPC_DEC_EXPSYND_131_reg_model LDPC_DEC_EXPSYND_131;
    rand LDPC_DEC_EXPSYND_132_reg_model LDPC_DEC_EXPSYND_132;
    rand LDPC_DEC_EXPSYND_133_reg_model LDPC_DEC_EXPSYND_133;
    rand LDPC_DEC_EXPSYND_134_reg_model LDPC_DEC_EXPSYND_134;
    rand LDPC_DEC_EXPSYND_135_reg_model LDPC_DEC_EXPSYND_135;
    rand LDPC_DEC_EXPSYND_136_reg_model LDPC_DEC_EXPSYND_136;
    rand LDPC_DEC_EXPSYND_137_reg_model LDPC_DEC_EXPSYND_137;
    rand LDPC_DEC_EXPSYND_138_reg_model LDPC_DEC_EXPSYND_138;
    rand LDPC_DEC_EXPSYND_139_reg_model LDPC_DEC_EXPSYND_139;
    rand LDPC_DEC_EXPSYND_140_reg_model LDPC_DEC_EXPSYND_140;
    rand LDPC_DEC_EXPSYND_141_reg_model LDPC_DEC_EXPSYND_141;
    rand LDPC_DEC_EXPSYND_142_reg_model LDPC_DEC_EXPSYND_142;
    rand LDPC_DEC_EXPSYND_143_reg_model LDPC_DEC_EXPSYND_143;
    rand LDPC_DEC_EXPSYND_144_reg_model LDPC_DEC_EXPSYND_144;
    rand LDPC_DEC_EXPSYND_145_reg_model LDPC_DEC_EXPSYND_145;
    rand LDPC_DEC_EXPSYND_146_reg_model LDPC_DEC_EXPSYND_146;
    rand LDPC_DEC_EXPSYND_147_reg_model LDPC_DEC_EXPSYND_147;
    rand LDPC_DEC_EXPSYND_148_reg_model LDPC_DEC_EXPSYND_148;
    rand LDPC_DEC_EXPSYND_149_reg_model LDPC_DEC_EXPSYND_149;
    rand LDPC_DEC_EXPSYND_150_reg_model LDPC_DEC_EXPSYND_150;
    rand LDPC_DEC_EXPSYND_151_reg_model LDPC_DEC_EXPSYND_151;
    rand LDPC_DEC_EXPSYND_152_reg_model LDPC_DEC_EXPSYND_152;
    rand LDPC_DEC_EXPSYND_153_reg_model LDPC_DEC_EXPSYND_153;
    rand LDPC_DEC_EXPSYND_154_reg_model LDPC_DEC_EXPSYND_154;
    rand LDPC_DEC_EXPSYND_155_reg_model LDPC_DEC_EXPSYND_155;
    rand LDPC_DEC_EXPSYND_156_reg_model LDPC_DEC_EXPSYND_156;
    rand LDPC_DEC_EXPSYND_157_reg_model LDPC_DEC_EXPSYND_157;
    rand LDPC_DEC_EXPSYND_158_reg_model LDPC_DEC_EXPSYND_158;
    rand LDPC_DEC_EXPSYND_159_reg_model LDPC_DEC_EXPSYND_159;
    rand LDPC_DEC_EXPSYND_160_reg_model LDPC_DEC_EXPSYND_160;
    rand LDPC_DEC_EXPSYND_161_reg_model LDPC_DEC_EXPSYND_161;
    rand LDPC_DEC_EXPSYND_162_reg_model LDPC_DEC_EXPSYND_162;
    rand LDPC_DEC_EXPSYND_163_reg_model LDPC_DEC_EXPSYND_163;
    rand LDPC_DEC_EXPSYND_164_reg_model LDPC_DEC_EXPSYND_164;
    rand LDPC_DEC_EXPSYND_165_reg_model LDPC_DEC_EXPSYND_165;
    rand LDPC_DEC_EXPSYND_166_reg_model LDPC_DEC_EXPSYND_166;
    rand LDPC_DEC_EXPSYND_167_reg_model LDPC_DEC_EXPSYND_167;
    rand LDPC_DEC_PROBABILITY_reg_model LDPC_DEC_PROBABILITY;
    rand LDPC_DEC_HamDist_loop_max_reg_model LDPC_DEC_HamDist_loop_max;
    rand LDPC_DEC_HamDist_loop_percentage_reg_model LDPC_DEC_HamDist_loop_percentage;
    rand LDPC_DEC_HamDist_iir1_reg_model LDPC_DEC_HamDist_iir1;
    rand LDPC_DEC_HamDist_iir2_NOT_USED_reg_model LDPC_DEC_HamDist_iir2_NOT_USED;
    rand LDPC_DEC_HamDist_iir3_NOT_USED_reg_model LDPC_DEC_HamDist_iir3_NOT_USED;
    rand LDPC_DEC_converged_valid_reg_model LDPC_DEC_converged_valid;
    rand LDPC_DEC_converged_status_reg_model LDPC_DEC_converged_status;
    rand LDPC_DEC_converged_valid_NOT_USED_reg_model LDPC_DEC_converged_valid_NOT_USED;
    rand LDPC_DEC_start_reg_model LDPC_DEC_start;
    rand LDPC_DEC_valid_NOT_USED_reg_model LDPC_DEC_valid_NOT_USED;
    rand LDPC_DEC_valid_codeword_NOT_USED_reg_model LDPC_DEC_valid_codeword_NOT_USED;
    rand LDPC_DEC_CODEWRD_OUT_BIT_0_reg_model LDPC_DEC_CODEWRD_OUT_BIT_0;
    rand LDPC_DEC_CODEWRD_OUT_BIT_1_reg_model LDPC_DEC_CODEWRD_OUT_BIT_1;
    rand LDPC_DEC_CODEWRD_OUT_BIT_2_reg_model LDPC_DEC_CODEWRD_OUT_BIT_2;
    rand LDPC_DEC_CODEWRD_OUT_BIT_3_reg_model LDPC_DEC_CODEWRD_OUT_BIT_3;
    rand LDPC_DEC_CODEWRD_OUT_BIT_4_reg_model LDPC_DEC_CODEWRD_OUT_BIT_4;
    rand LDPC_DEC_CODEWRD_OUT_BIT_5_reg_model LDPC_DEC_CODEWRD_OUT_BIT_5;
    rand LDPC_DEC_CODEWRD_OUT_BIT_6_reg_model LDPC_DEC_CODEWRD_OUT_BIT_6;
    rand LDPC_DEC_CODEWRD_OUT_BIT_7_reg_model LDPC_DEC_CODEWRD_OUT_BIT_7;
    rand LDPC_DEC_CODEWRD_OUT_BIT_8_reg_model LDPC_DEC_CODEWRD_OUT_BIT_8;
    rand LDPC_DEC_CODEWRD_OUT_BIT_9_reg_model LDPC_DEC_CODEWRD_OUT_BIT_9;
    rand LDPC_DEC_CODEWRD_OUT_BIT_10_reg_model LDPC_DEC_CODEWRD_OUT_BIT_10;
    rand LDPC_DEC_CODEWRD_OUT_BIT_11_reg_model LDPC_DEC_CODEWRD_OUT_BIT_11;
    rand LDPC_DEC_CODEWRD_OUT_BIT_12_reg_model LDPC_DEC_CODEWRD_OUT_BIT_12;
    rand LDPC_DEC_CODEWRD_OUT_BIT_13_reg_model LDPC_DEC_CODEWRD_OUT_BIT_13;
    rand LDPC_DEC_CODEWRD_OUT_BIT_14_reg_model LDPC_DEC_CODEWRD_OUT_BIT_14;
    rand LDPC_DEC_CODEWRD_OUT_BIT_15_reg_model LDPC_DEC_CODEWRD_OUT_BIT_15;
    rand LDPC_DEC_CODEWRD_OUT_BIT_16_reg_model LDPC_DEC_CODEWRD_OUT_BIT_16;
    rand LDPC_DEC_CODEWRD_OUT_BIT_17_reg_model LDPC_DEC_CODEWRD_OUT_BIT_17;
    rand LDPC_DEC_CODEWRD_OUT_BIT_18_reg_model LDPC_DEC_CODEWRD_OUT_BIT_18;
    rand LDPC_DEC_CODEWRD_OUT_BIT_19_reg_model LDPC_DEC_CODEWRD_OUT_BIT_19;
    rand LDPC_DEC_CODEWRD_OUT_BIT_20_reg_model LDPC_DEC_CODEWRD_OUT_BIT_20;
    rand LDPC_DEC_CODEWRD_OUT_BIT_21_reg_model LDPC_DEC_CODEWRD_OUT_BIT_21;
    rand LDPC_DEC_CODEWRD_OUT_BIT_22_reg_model LDPC_DEC_CODEWRD_OUT_BIT_22;
    rand LDPC_DEC_CODEWRD_OUT_BIT_23_reg_model LDPC_DEC_CODEWRD_OUT_BIT_23;
    rand LDPC_DEC_CODEWRD_OUT_BIT_24_reg_model LDPC_DEC_CODEWRD_OUT_BIT_24;
    rand LDPC_DEC_CODEWRD_OUT_BIT_25_reg_model LDPC_DEC_CODEWRD_OUT_BIT_25;
    rand LDPC_DEC_CODEWRD_OUT_BIT_26_reg_model LDPC_DEC_CODEWRD_OUT_BIT_26;
    rand LDPC_DEC_CODEWRD_OUT_BIT_27_reg_model LDPC_DEC_CODEWRD_OUT_BIT_27;
    rand LDPC_DEC_CODEWRD_OUT_BIT_28_reg_model LDPC_DEC_CODEWRD_OUT_BIT_28;
    rand LDPC_DEC_CODEWRD_OUT_BIT_29_reg_model LDPC_DEC_CODEWRD_OUT_BIT_29;
    rand LDPC_DEC_CODEWRD_OUT_BIT_30_reg_model LDPC_DEC_CODEWRD_OUT_BIT_30;
    rand LDPC_DEC_CODEWRD_OUT_BIT_31_reg_model LDPC_DEC_CODEWRD_OUT_BIT_31;
    rand LDPC_DEC_CODEWRD_OUT_BIT_32_reg_model LDPC_DEC_CODEWRD_OUT_BIT_32;
    rand LDPC_DEC_CODEWRD_OUT_BIT_33_reg_model LDPC_DEC_CODEWRD_OUT_BIT_33;
    rand LDPC_DEC_CODEWRD_OUT_BIT_34_reg_model LDPC_DEC_CODEWRD_OUT_BIT_34;
    rand LDPC_DEC_CODEWRD_OUT_BIT_35_reg_model LDPC_DEC_CODEWRD_OUT_BIT_35;
    rand LDPC_DEC_CODEWRD_OUT_BIT_36_reg_model LDPC_DEC_CODEWRD_OUT_BIT_36;
    rand LDPC_DEC_CODEWRD_OUT_BIT_37_reg_model LDPC_DEC_CODEWRD_OUT_BIT_37;
    rand LDPC_DEC_CODEWRD_OUT_BIT_38_reg_model LDPC_DEC_CODEWRD_OUT_BIT_38;
    rand LDPC_DEC_CODEWRD_OUT_BIT_39_reg_model LDPC_DEC_CODEWRD_OUT_BIT_39;
    rand LDPC_DEC_CODEWRD_OUT_BIT_40_reg_model LDPC_DEC_CODEWRD_OUT_BIT_40;
    rand LDPC_DEC_CODEWRD_OUT_BIT_41_reg_model LDPC_DEC_CODEWRD_OUT_BIT_41;
    rand LDPC_DEC_CODEWRD_OUT_BIT_42_reg_model LDPC_DEC_CODEWRD_OUT_BIT_42;
    rand LDPC_DEC_CODEWRD_OUT_BIT_43_reg_model LDPC_DEC_CODEWRD_OUT_BIT_43;
    rand LDPC_DEC_CODEWRD_OUT_BIT_44_reg_model LDPC_DEC_CODEWRD_OUT_BIT_44;
    rand LDPC_DEC_CODEWRD_OUT_BIT_45_reg_model LDPC_DEC_CODEWRD_OUT_BIT_45;
    rand LDPC_DEC_CODEWRD_OUT_BIT_46_reg_model LDPC_DEC_CODEWRD_OUT_BIT_46;
    rand LDPC_DEC_CODEWRD_OUT_BIT_47_reg_model LDPC_DEC_CODEWRD_OUT_BIT_47;
    rand LDPC_DEC_CODEWRD_OUT_BIT_48_reg_model LDPC_DEC_CODEWRD_OUT_BIT_48;
    rand LDPC_DEC_CODEWRD_OUT_BIT_49_reg_model LDPC_DEC_CODEWRD_OUT_BIT_49;
    rand LDPC_DEC_CODEWRD_OUT_BIT_50_reg_model LDPC_DEC_CODEWRD_OUT_BIT_50;
    rand LDPC_DEC_CODEWRD_OUT_BIT_51_reg_model LDPC_DEC_CODEWRD_OUT_BIT_51;
    rand LDPC_DEC_CODEWRD_OUT_BIT_52_reg_model LDPC_DEC_CODEWRD_OUT_BIT_52;
    rand LDPC_DEC_CODEWRD_OUT_BIT_53_reg_model LDPC_DEC_CODEWRD_OUT_BIT_53;
    rand LDPC_DEC_CODEWRD_OUT_BIT_54_reg_model LDPC_DEC_CODEWRD_OUT_BIT_54;
    rand LDPC_DEC_CODEWRD_OUT_BIT_55_reg_model LDPC_DEC_CODEWRD_OUT_BIT_55;
    rand LDPC_DEC_CODEWRD_OUT_BIT_56_reg_model LDPC_DEC_CODEWRD_OUT_BIT_56;
    rand LDPC_DEC_CODEWRD_OUT_BIT_57_reg_model LDPC_DEC_CODEWRD_OUT_BIT_57;
    rand LDPC_DEC_CODEWRD_OUT_BIT_58_reg_model LDPC_DEC_CODEWRD_OUT_BIT_58;
    rand LDPC_DEC_CODEWRD_OUT_BIT_59_reg_model LDPC_DEC_CODEWRD_OUT_BIT_59;
    rand LDPC_DEC_CODEWRD_OUT_BIT_60_reg_model LDPC_DEC_CODEWRD_OUT_BIT_60;
    rand LDPC_DEC_CODEWRD_OUT_BIT_61_reg_model LDPC_DEC_CODEWRD_OUT_BIT_61;
    rand LDPC_DEC_CODEWRD_OUT_BIT_62_reg_model LDPC_DEC_CODEWRD_OUT_BIT_62;
    rand LDPC_DEC_CODEWRD_OUT_BIT_63_reg_model LDPC_DEC_CODEWRD_OUT_BIT_63;
    rand LDPC_DEC_CODEWRD_OUT_BIT_64_reg_model LDPC_DEC_CODEWRD_OUT_BIT_64;
    rand LDPC_DEC_CODEWRD_OUT_BIT_65_reg_model LDPC_DEC_CODEWRD_OUT_BIT_65;
    rand LDPC_DEC_CODEWRD_OUT_BIT_66_reg_model LDPC_DEC_CODEWRD_OUT_BIT_66;
    rand LDPC_DEC_CODEWRD_OUT_BIT_67_reg_model LDPC_DEC_CODEWRD_OUT_BIT_67;
    rand LDPC_DEC_CODEWRD_OUT_BIT_68_reg_model LDPC_DEC_CODEWRD_OUT_BIT_68;
    rand LDPC_DEC_CODEWRD_OUT_BIT_69_reg_model LDPC_DEC_CODEWRD_OUT_BIT_69;
    rand LDPC_DEC_CODEWRD_OUT_BIT_70_reg_model LDPC_DEC_CODEWRD_OUT_BIT_70;
    rand LDPC_DEC_CODEWRD_OUT_BIT_71_reg_model LDPC_DEC_CODEWRD_OUT_BIT_71;
    rand LDPC_DEC_CODEWRD_OUT_BIT_72_reg_model LDPC_DEC_CODEWRD_OUT_BIT_72;
    rand LDPC_DEC_CODEWRD_OUT_BIT_73_reg_model LDPC_DEC_CODEWRD_OUT_BIT_73;
    rand LDPC_DEC_CODEWRD_OUT_BIT_74_reg_model LDPC_DEC_CODEWRD_OUT_BIT_74;
    rand LDPC_DEC_CODEWRD_OUT_BIT_75_reg_model LDPC_DEC_CODEWRD_OUT_BIT_75;
    rand LDPC_DEC_CODEWRD_OUT_BIT_76_reg_model LDPC_DEC_CODEWRD_OUT_BIT_76;
    rand LDPC_DEC_CODEWRD_OUT_BIT_77_reg_model LDPC_DEC_CODEWRD_OUT_BIT_77;
    rand LDPC_DEC_CODEWRD_OUT_BIT_78_reg_model LDPC_DEC_CODEWRD_OUT_BIT_78;
    rand LDPC_DEC_CODEWRD_OUT_BIT_79_reg_model LDPC_DEC_CODEWRD_OUT_BIT_79;
    rand LDPC_DEC_CODEWRD_OUT_BIT_80_reg_model LDPC_DEC_CODEWRD_OUT_BIT_80;
    rand LDPC_DEC_CODEWRD_OUT_BIT_81_reg_model LDPC_DEC_CODEWRD_OUT_BIT_81;
    rand LDPC_DEC_CODEWRD_OUT_BIT_82_reg_model LDPC_DEC_CODEWRD_OUT_BIT_82;
    rand LDPC_DEC_CODEWRD_OUT_BIT_83_reg_model LDPC_DEC_CODEWRD_OUT_BIT_83;
    rand LDPC_DEC_CODEWRD_OUT_BIT_84_reg_model LDPC_DEC_CODEWRD_OUT_BIT_84;
    rand LDPC_DEC_CODEWRD_OUT_BIT_85_reg_model LDPC_DEC_CODEWRD_OUT_BIT_85;
    rand LDPC_DEC_CODEWRD_OUT_BIT_86_reg_model LDPC_DEC_CODEWRD_OUT_BIT_86;
    rand LDPC_DEC_CODEWRD_OUT_BIT_87_reg_model LDPC_DEC_CODEWRD_OUT_BIT_87;
    rand LDPC_DEC_CODEWRD_OUT_BIT_88_reg_model LDPC_DEC_CODEWRD_OUT_BIT_88;
    rand LDPC_DEC_CODEWRD_OUT_BIT_89_reg_model LDPC_DEC_CODEWRD_OUT_BIT_89;
    rand LDPC_DEC_CODEWRD_OUT_BIT_90_reg_model LDPC_DEC_CODEWRD_OUT_BIT_90;
    rand LDPC_DEC_CODEWRD_OUT_BIT_91_reg_model LDPC_DEC_CODEWRD_OUT_BIT_91;
    rand LDPC_DEC_CODEWRD_OUT_BIT_92_reg_model LDPC_DEC_CODEWRD_OUT_BIT_92;
    rand LDPC_DEC_CODEWRD_OUT_BIT_93_reg_model LDPC_DEC_CODEWRD_OUT_BIT_93;
    rand LDPC_DEC_CODEWRD_OUT_BIT_94_reg_model LDPC_DEC_CODEWRD_OUT_BIT_94;
    rand LDPC_DEC_CODEWRD_OUT_BIT_95_reg_model LDPC_DEC_CODEWRD_OUT_BIT_95;
    rand LDPC_DEC_CODEWRD_OUT_BIT_96_reg_model LDPC_DEC_CODEWRD_OUT_BIT_96;
    rand LDPC_DEC_CODEWRD_OUT_BIT_97_reg_model LDPC_DEC_CODEWRD_OUT_BIT_97;
    rand LDPC_DEC_CODEWRD_OUT_BIT_98_reg_model LDPC_DEC_CODEWRD_OUT_BIT_98;
    rand LDPC_DEC_CODEWRD_OUT_BIT_99_reg_model LDPC_DEC_CODEWRD_OUT_BIT_99;
    rand LDPC_DEC_CODEWRD_OUT_BIT_100_reg_model LDPC_DEC_CODEWRD_OUT_BIT_100;
    rand LDPC_DEC_CODEWRD_OUT_BIT_101_reg_model LDPC_DEC_CODEWRD_OUT_BIT_101;
    rand LDPC_DEC_CODEWRD_OUT_BIT_102_reg_model LDPC_DEC_CODEWRD_OUT_BIT_102;
    rand LDPC_DEC_CODEWRD_OUT_BIT_103_reg_model LDPC_DEC_CODEWRD_OUT_BIT_103;
    rand LDPC_DEC_CODEWRD_OUT_BIT_104_reg_model LDPC_DEC_CODEWRD_OUT_BIT_104;
    rand LDPC_DEC_CODEWRD_OUT_BIT_105_reg_model LDPC_DEC_CODEWRD_OUT_BIT_105;
    rand LDPC_DEC_CODEWRD_OUT_BIT_106_reg_model LDPC_DEC_CODEWRD_OUT_BIT_106;
    rand LDPC_DEC_CODEWRD_OUT_BIT_107_reg_model LDPC_DEC_CODEWRD_OUT_BIT_107;
    rand LDPC_DEC_CODEWRD_OUT_BIT_108_reg_model LDPC_DEC_CODEWRD_OUT_BIT_108;
    rand LDPC_DEC_CODEWRD_OUT_BIT_109_reg_model LDPC_DEC_CODEWRD_OUT_BIT_109;
    rand LDPC_DEC_CODEWRD_OUT_BIT_110_reg_model LDPC_DEC_CODEWRD_OUT_BIT_110;
    rand LDPC_DEC_CODEWRD_OUT_BIT_111_reg_model LDPC_DEC_CODEWRD_OUT_BIT_111;
    rand LDPC_DEC_CODEWRD_OUT_BIT_112_reg_model LDPC_DEC_CODEWRD_OUT_BIT_112;
    rand LDPC_DEC_CODEWRD_OUT_BIT_113_reg_model LDPC_DEC_CODEWRD_OUT_BIT_113;
    rand LDPC_DEC_CODEWRD_OUT_BIT_114_reg_model LDPC_DEC_CODEWRD_OUT_BIT_114;
    rand LDPC_DEC_CODEWRD_OUT_BIT_115_reg_model LDPC_DEC_CODEWRD_OUT_BIT_115;
    rand LDPC_DEC_CODEWRD_OUT_BIT_116_reg_model LDPC_DEC_CODEWRD_OUT_BIT_116;
    rand LDPC_DEC_CODEWRD_OUT_BIT_117_reg_model LDPC_DEC_CODEWRD_OUT_BIT_117;
    rand LDPC_DEC_CODEWRD_OUT_BIT_118_reg_model LDPC_DEC_CODEWRD_OUT_BIT_118;
    rand LDPC_DEC_CODEWRD_OUT_BIT_119_reg_model LDPC_DEC_CODEWRD_OUT_BIT_119;
    rand LDPC_DEC_CODEWRD_OUT_BIT_120_reg_model LDPC_DEC_CODEWRD_OUT_BIT_120;
    rand LDPC_DEC_CODEWRD_OUT_BIT_121_reg_model LDPC_DEC_CODEWRD_OUT_BIT_121;
    rand LDPC_DEC_CODEWRD_OUT_BIT_122_reg_model LDPC_DEC_CODEWRD_OUT_BIT_122;
    rand LDPC_DEC_CODEWRD_OUT_BIT_123_reg_model LDPC_DEC_CODEWRD_OUT_BIT_123;
    rand LDPC_DEC_CODEWRD_OUT_BIT_124_reg_model LDPC_DEC_CODEWRD_OUT_BIT_124;
    rand LDPC_DEC_CODEWRD_OUT_BIT_125_reg_model LDPC_DEC_CODEWRD_OUT_BIT_125;
    rand LDPC_DEC_CODEWRD_OUT_BIT_126_reg_model LDPC_DEC_CODEWRD_OUT_BIT_126;
    rand LDPC_DEC_CODEWRD_OUT_BIT_127_reg_model LDPC_DEC_CODEWRD_OUT_BIT_127;
    rand LDPC_DEC_CODEWRD_OUT_BIT_128_reg_model LDPC_DEC_CODEWRD_OUT_BIT_128;
    rand LDPC_DEC_CODEWRD_OUT_BIT_129_reg_model LDPC_DEC_CODEWRD_OUT_BIT_129;
    rand LDPC_DEC_CODEWRD_OUT_BIT_130_reg_model LDPC_DEC_CODEWRD_OUT_BIT_130;
    rand LDPC_DEC_CODEWRD_OUT_BIT_131_reg_model LDPC_DEC_CODEWRD_OUT_BIT_131;
    rand LDPC_DEC_CODEWRD_OUT_BIT_132_reg_model LDPC_DEC_CODEWRD_OUT_BIT_132;
    rand LDPC_DEC_CODEWRD_OUT_BIT_133_reg_model LDPC_DEC_CODEWRD_OUT_BIT_133;
    rand LDPC_DEC_CODEWRD_OUT_BIT_134_reg_model LDPC_DEC_CODEWRD_OUT_BIT_134;
    rand LDPC_DEC_CODEWRD_OUT_BIT_135_reg_model LDPC_DEC_CODEWRD_OUT_BIT_135;
    rand LDPC_DEC_CODEWRD_OUT_BIT_136_reg_model LDPC_DEC_CODEWRD_OUT_BIT_136;
    rand LDPC_DEC_CODEWRD_OUT_BIT_137_reg_model LDPC_DEC_CODEWRD_OUT_BIT_137;
    rand LDPC_DEC_CODEWRD_OUT_BIT_138_reg_model LDPC_DEC_CODEWRD_OUT_BIT_138;
    rand LDPC_DEC_CODEWRD_OUT_BIT_139_reg_model LDPC_DEC_CODEWRD_OUT_BIT_139;
    rand LDPC_DEC_CODEWRD_OUT_BIT_140_reg_model LDPC_DEC_CODEWRD_OUT_BIT_140;
    rand LDPC_DEC_CODEWRD_OUT_BIT_141_reg_model LDPC_DEC_CODEWRD_OUT_BIT_141;
    rand LDPC_DEC_CODEWRD_OUT_BIT_142_reg_model LDPC_DEC_CODEWRD_OUT_BIT_142;
    rand LDPC_DEC_CODEWRD_OUT_BIT_143_reg_model LDPC_DEC_CODEWRD_OUT_BIT_143;
    rand LDPC_DEC_CODEWRD_OUT_BIT_144_reg_model LDPC_DEC_CODEWRD_OUT_BIT_144;
    rand LDPC_DEC_CODEWRD_OUT_BIT_145_reg_model LDPC_DEC_CODEWRD_OUT_BIT_145;
    rand LDPC_DEC_CODEWRD_OUT_BIT_146_reg_model LDPC_DEC_CODEWRD_OUT_BIT_146;
    rand LDPC_DEC_CODEWRD_OUT_BIT_147_reg_model LDPC_DEC_CODEWRD_OUT_BIT_147;
    rand LDPC_DEC_CODEWRD_OUT_BIT_148_reg_model LDPC_DEC_CODEWRD_OUT_BIT_148;
    rand LDPC_DEC_CODEWRD_OUT_BIT_149_reg_model LDPC_DEC_CODEWRD_OUT_BIT_149;
    rand LDPC_DEC_CODEWRD_OUT_BIT_150_reg_model LDPC_DEC_CODEWRD_OUT_BIT_150;
    rand LDPC_DEC_CODEWRD_OUT_BIT_151_reg_model LDPC_DEC_CODEWRD_OUT_BIT_151;
    rand LDPC_DEC_CODEWRD_OUT_BIT_152_reg_model LDPC_DEC_CODEWRD_OUT_BIT_152;
    rand LDPC_DEC_CODEWRD_OUT_BIT_153_reg_model LDPC_DEC_CODEWRD_OUT_BIT_153;
    rand LDPC_DEC_CODEWRD_OUT_BIT_154_reg_model LDPC_DEC_CODEWRD_OUT_BIT_154;
    rand LDPC_DEC_CODEWRD_OUT_BIT_155_reg_model LDPC_DEC_CODEWRD_OUT_BIT_155;
    rand LDPC_DEC_CODEWRD_OUT_BIT_156_reg_model LDPC_DEC_CODEWRD_OUT_BIT_156;
    rand LDPC_DEC_CODEWRD_OUT_BIT_157_reg_model LDPC_DEC_CODEWRD_OUT_BIT_157;
    rand LDPC_DEC_CODEWRD_OUT_BIT_158_reg_model LDPC_DEC_CODEWRD_OUT_BIT_158;
    rand LDPC_DEC_CODEWRD_OUT_BIT_159_reg_model LDPC_DEC_CODEWRD_OUT_BIT_159;
    rand LDPC_DEC_CODEWRD_OUT_BIT_160_reg_model LDPC_DEC_CODEWRD_OUT_BIT_160;
    rand LDPC_DEC_CODEWRD_OUT_BIT_161_reg_model LDPC_DEC_CODEWRD_OUT_BIT_161;
    rand LDPC_DEC_CODEWRD_OUT_BIT_162_reg_model LDPC_DEC_CODEWRD_OUT_BIT_162;
    rand LDPC_DEC_CODEWRD_OUT_BIT_163_reg_model LDPC_DEC_CODEWRD_OUT_BIT_163;
    rand LDPC_DEC_CODEWRD_OUT_BIT_164_reg_model LDPC_DEC_CODEWRD_OUT_BIT_164;
    rand LDPC_DEC_CODEWRD_OUT_BIT_165_reg_model LDPC_DEC_CODEWRD_OUT_BIT_165;
    rand LDPC_DEC_CODEWRD_OUT_BIT_166_reg_model LDPC_DEC_CODEWRD_OUT_BIT_166;
    rand LDPC_DEC_CODEWRD_OUT_BIT_167_reg_model LDPC_DEC_CODEWRD_OUT_BIT_167;
    rand LDPC_DEC_CODEWRD_OUT_BIT_168_reg_model LDPC_DEC_CODEWRD_OUT_BIT_168;
    rand LDPC_DEC_CODEWRD_OUT_BIT_169_reg_model LDPC_DEC_CODEWRD_OUT_BIT_169;
    rand LDPC_DEC_CODEWRD_OUT_BIT_170_reg_model LDPC_DEC_CODEWRD_OUT_BIT_170;
    rand LDPC_DEC_CODEWRD_OUT_BIT_171_reg_model LDPC_DEC_CODEWRD_OUT_BIT_171;
    rand LDPC_DEC_CODEWRD_OUT_BIT_172_reg_model LDPC_DEC_CODEWRD_OUT_BIT_172;
    rand LDPC_DEC_CODEWRD_OUT_BIT_173_reg_model LDPC_DEC_CODEWRD_OUT_BIT_173;
    rand LDPC_DEC_CODEWRD_OUT_BIT_174_reg_model LDPC_DEC_CODEWRD_OUT_BIT_174;
    rand LDPC_DEC_CODEWRD_OUT_BIT_175_reg_model LDPC_DEC_CODEWRD_OUT_BIT_175;
    rand LDPC_DEC_CODEWRD_OUT_BIT_176_reg_model LDPC_DEC_CODEWRD_OUT_BIT_176;
    rand LDPC_DEC_CODEWRD_OUT_BIT_177_reg_model LDPC_DEC_CODEWRD_OUT_BIT_177;
    rand LDPC_DEC_CODEWRD_OUT_BIT_178_reg_model LDPC_DEC_CODEWRD_OUT_BIT_178;
    rand LDPC_DEC_CODEWRD_OUT_BIT_179_reg_model LDPC_DEC_CODEWRD_OUT_BIT_179;
    rand LDPC_DEC_CODEWRD_OUT_BIT_180_reg_model LDPC_DEC_CODEWRD_OUT_BIT_180;
    rand LDPC_DEC_CODEWRD_OUT_BIT_181_reg_model LDPC_DEC_CODEWRD_OUT_BIT_181;
    rand LDPC_DEC_CODEWRD_OUT_BIT_182_reg_model LDPC_DEC_CODEWRD_OUT_BIT_182;
    rand LDPC_DEC_CODEWRD_OUT_BIT_183_reg_model LDPC_DEC_CODEWRD_OUT_BIT_183;
    rand LDPC_DEC_CODEWRD_OUT_BIT_184_reg_model LDPC_DEC_CODEWRD_OUT_BIT_184;
    rand LDPC_DEC_CODEWRD_OUT_BIT_185_reg_model LDPC_DEC_CODEWRD_OUT_BIT_185;
    rand LDPC_DEC_CODEWRD_OUT_BIT_186_reg_model LDPC_DEC_CODEWRD_OUT_BIT_186;
    rand LDPC_DEC_CODEWRD_OUT_BIT_187_reg_model LDPC_DEC_CODEWRD_OUT_BIT_187;
    rand LDPC_DEC_CODEWRD_OUT_BIT_188_reg_model LDPC_DEC_CODEWRD_OUT_BIT_188;
    rand LDPC_DEC_CODEWRD_OUT_BIT_189_reg_model LDPC_DEC_CODEWRD_OUT_BIT_189;
    rand LDPC_DEC_CODEWRD_OUT_BIT_190_reg_model LDPC_DEC_CODEWRD_OUT_BIT_190;
    rand LDPC_DEC_CODEWRD_OUT_BIT_191_reg_model LDPC_DEC_CODEWRD_OUT_BIT_191;
    rand LDPC_DEC_CODEWRD_OUT_BIT_192_reg_model LDPC_DEC_CODEWRD_OUT_BIT_192;
    rand LDPC_DEC_CODEWRD_OUT_BIT_193_reg_model LDPC_DEC_CODEWRD_OUT_BIT_193;
    rand LDPC_DEC_CODEWRD_OUT_BIT_194_reg_model LDPC_DEC_CODEWRD_OUT_BIT_194;
    rand LDPC_DEC_CODEWRD_OUT_BIT_195_reg_model LDPC_DEC_CODEWRD_OUT_BIT_195;
    rand LDPC_DEC_CODEWRD_OUT_BIT_196_reg_model LDPC_DEC_CODEWRD_OUT_BIT_196;
    rand LDPC_DEC_CODEWRD_OUT_BIT_197_reg_model LDPC_DEC_CODEWRD_OUT_BIT_197;
    rand LDPC_DEC_CODEWRD_OUT_BIT_198_reg_model LDPC_DEC_CODEWRD_OUT_BIT_198;
    rand LDPC_DEC_CODEWRD_OUT_BIT_199_reg_model LDPC_DEC_CODEWRD_OUT_BIT_199;
    rand LDPC_DEC_CODEWRD_OUT_BIT_200_reg_model LDPC_DEC_CODEWRD_OUT_BIT_200;
    rand LDPC_DEC_CODEWRD_OUT_BIT_201_reg_model LDPC_DEC_CODEWRD_OUT_BIT_201;
    rand LDPC_DEC_CODEWRD_OUT_BIT_202_reg_model LDPC_DEC_CODEWRD_OUT_BIT_202;
    rand LDPC_DEC_CODEWRD_OUT_BIT_203_reg_model LDPC_DEC_CODEWRD_OUT_BIT_203;
    rand LDPC_DEC_CODEWRD_OUT_BIT_204_reg_model LDPC_DEC_CODEWRD_OUT_BIT_204;
    rand LDPC_DEC_CODEWRD_OUT_BIT_205_reg_model LDPC_DEC_CODEWRD_OUT_BIT_205;
    rand LDPC_DEC_CODEWRD_OUT_BIT_206_reg_model LDPC_DEC_CODEWRD_OUT_BIT_206;
    rand LDPC_DEC_CODEWRD_OUT_BIT_207_reg_model LDPC_DEC_CODEWRD_OUT_BIT_207;
    function new(string name);
      super.new(name, 4, 0);
    endfunction
    function void build();
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_0, '{}, 13'h0000, "RW", "g_LDPC_ENC_MSG_IN_0.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_1, '{}, 13'h0004, "RW", "g_LDPC_ENC_MSG_IN_1.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_2, '{}, 13'h0008, "RW", "g_LDPC_ENC_MSG_IN_2.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_3, '{}, 13'h000c, "RW", "g_LDPC_ENC_MSG_IN_3.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_4, '{}, 13'h0010, "RW", "g_LDPC_ENC_MSG_IN_4.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_5, '{}, 13'h0014, "RW", "g_LDPC_ENC_MSG_IN_5.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_6, '{}, 13'h0018, "RW", "g_LDPC_ENC_MSG_IN_6.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_7, '{}, 13'h001c, "RW", "g_LDPC_ENC_MSG_IN_7.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_8, '{}, 13'h0020, "RW", "g_LDPC_ENC_MSG_IN_8.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_9, '{}, 13'h0024, "RW", "g_LDPC_ENC_MSG_IN_9.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_10, '{}, 13'h0028, "RW", "g_LDPC_ENC_MSG_IN_10.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_11, '{}, 13'h002c, "RW", "g_LDPC_ENC_MSG_IN_11.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_12, '{}, 13'h0030, "RW", "g_LDPC_ENC_MSG_IN_12.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_13, '{}, 13'h0034, "RW", "g_LDPC_ENC_MSG_IN_13.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_14, '{}, 13'h0038, "RW", "g_LDPC_ENC_MSG_IN_14.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_15, '{}, 13'h003c, "RW", "g_LDPC_ENC_MSG_IN_15.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_16, '{}, 13'h0040, "RW", "g_LDPC_ENC_MSG_IN_16.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_17, '{}, 13'h0044, "RW", "g_LDPC_ENC_MSG_IN_17.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_18, '{}, 13'h0048, "RW", "g_LDPC_ENC_MSG_IN_18.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_19, '{}, 13'h004c, "RW", "g_LDPC_ENC_MSG_IN_19.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_20, '{}, 13'h0050, "RW", "g_LDPC_ENC_MSG_IN_20.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_21, '{}, 13'h0054, "RW", "g_LDPC_ENC_MSG_IN_21.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_22, '{}, 13'h0058, "RW", "g_LDPC_ENC_MSG_IN_22.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_23, '{}, 13'h005c, "RW", "g_LDPC_ENC_MSG_IN_23.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_24, '{}, 13'h0060, "RW", "g_LDPC_ENC_MSG_IN_24.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_25, '{}, 13'h0064, "RW", "g_LDPC_ENC_MSG_IN_25.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_26, '{}, 13'h0068, "RW", "g_LDPC_ENC_MSG_IN_26.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_27, '{}, 13'h006c, "RW", "g_LDPC_ENC_MSG_IN_27.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_28, '{}, 13'h0070, "RW", "g_LDPC_ENC_MSG_IN_28.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_29, '{}, 13'h0074, "RW", "g_LDPC_ENC_MSG_IN_29.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_30, '{}, 13'h0078, "RW", "g_LDPC_ENC_MSG_IN_30.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_31, '{}, 13'h007c, "RW", "g_LDPC_ENC_MSG_IN_31.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_32, '{}, 13'h0080, "RW", "g_LDPC_ENC_MSG_IN_32.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_33, '{}, 13'h0084, "RW", "g_LDPC_ENC_MSG_IN_33.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_34, '{}, 13'h0088, "RW", "g_LDPC_ENC_MSG_IN_34.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_35, '{}, 13'h008c, "RW", "g_LDPC_ENC_MSG_IN_35.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_36, '{}, 13'h0090, "RW", "g_LDPC_ENC_MSG_IN_36.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_37, '{}, 13'h0094, "RW", "g_LDPC_ENC_MSG_IN_37.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_38, '{}, 13'h0098, "RW", "g_LDPC_ENC_MSG_IN_38.u_register")
      `rggen_ral_create_reg(LDPC_ENC_MSG_IN_39, '{}, 13'h009c, "RW", "g_LDPC_ENC_MSG_IN_39.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_0, '{}, 13'h00a0, "RW", "g_LDPC_ENC_CODEWRD_0.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_1, '{}, 13'h00a4, "RW", "g_LDPC_ENC_CODEWRD_1.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_2, '{}, 13'h00a8, "RW", "g_LDPC_ENC_CODEWRD_2.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_3, '{}, 13'h00ac, "RW", "g_LDPC_ENC_CODEWRD_3.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_4, '{}, 13'h00b0, "RW", "g_LDPC_ENC_CODEWRD_4.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_5, '{}, 13'h00b4, "RW", "g_LDPC_ENC_CODEWRD_5.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_6, '{}, 13'h00b8, "RW", "g_LDPC_ENC_CODEWRD_6.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_7, '{}, 13'h00bc, "RW", "g_LDPC_ENC_CODEWRD_7.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_8, '{}, 13'h00c0, "RW", "g_LDPC_ENC_CODEWRD_8.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_9, '{}, 13'h00c4, "RW", "g_LDPC_ENC_CODEWRD_9.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_10, '{}, 13'h00c8, "RW", "g_LDPC_ENC_CODEWRD_10.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_11, '{}, 13'h00cc, "RW", "g_LDPC_ENC_CODEWRD_11.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_12, '{}, 13'h00d0, "RW", "g_LDPC_ENC_CODEWRD_12.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_13, '{}, 13'h00d4, "RW", "g_LDPC_ENC_CODEWRD_13.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_14, '{}, 13'h00d8, "RW", "g_LDPC_ENC_CODEWRD_14.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_15, '{}, 13'h00dc, "RW", "g_LDPC_ENC_CODEWRD_15.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_16, '{}, 13'h00e0, "RW", "g_LDPC_ENC_CODEWRD_16.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_17, '{}, 13'h00e4, "RW", "g_LDPC_ENC_CODEWRD_17.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_18, '{}, 13'h00e8, "RW", "g_LDPC_ENC_CODEWRD_18.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_19, '{}, 13'h00ec, "RW", "g_LDPC_ENC_CODEWRD_19.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_20, '{}, 13'h00f0, "RW", "g_LDPC_ENC_CODEWRD_20.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_21, '{}, 13'h00f4, "RW", "g_LDPC_ENC_CODEWRD_21.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_22, '{}, 13'h00f8, "RW", "g_LDPC_ENC_CODEWRD_22.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_23, '{}, 13'h00fc, "RW", "g_LDPC_ENC_CODEWRD_23.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_24, '{}, 13'h0100, "RW", "g_LDPC_ENC_CODEWRD_24.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_25, '{}, 13'h0104, "RW", "g_LDPC_ENC_CODEWRD_25.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_26, '{}, 13'h0108, "RW", "g_LDPC_ENC_CODEWRD_26.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_27, '{}, 13'h010c, "RW", "g_LDPC_ENC_CODEWRD_27.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_28, '{}, 13'h0110, "RW", "g_LDPC_ENC_CODEWRD_28.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_29, '{}, 13'h0114, "RW", "g_LDPC_ENC_CODEWRD_29.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_30, '{}, 13'h0118, "RW", "g_LDPC_ENC_CODEWRD_30.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_31, '{}, 13'h011c, "RW", "g_LDPC_ENC_CODEWRD_31.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_32, '{}, 13'h0120, "RW", "g_LDPC_ENC_CODEWRD_32.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_33, '{}, 13'h0124, "RW", "g_LDPC_ENC_CODEWRD_33.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_34, '{}, 13'h0128, "RW", "g_LDPC_ENC_CODEWRD_34.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_35, '{}, 13'h012c, "RW", "g_LDPC_ENC_CODEWRD_35.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_36, '{}, 13'h0130, "RW", "g_LDPC_ENC_CODEWRD_36.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_37, '{}, 13'h0134, "RW", "g_LDPC_ENC_CODEWRD_37.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_38, '{}, 13'h0138, "RW", "g_LDPC_ENC_CODEWRD_38.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_39, '{}, 13'h013c, "RW", "g_LDPC_ENC_CODEWRD_39.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_40, '{}, 13'h0140, "RW", "g_LDPC_ENC_CODEWRD_40.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_41, '{}, 13'h0144, "RW", "g_LDPC_ENC_CODEWRD_41.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_42, '{}, 13'h0148, "RW", "g_LDPC_ENC_CODEWRD_42.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_43, '{}, 13'h014c, "RW", "g_LDPC_ENC_CODEWRD_43.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_44, '{}, 13'h0150, "RW", "g_LDPC_ENC_CODEWRD_44.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_45, '{}, 13'h0154, "RW", "g_LDPC_ENC_CODEWRD_45.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_46, '{}, 13'h0158, "RW", "g_LDPC_ENC_CODEWRD_46.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_47, '{}, 13'h015c, "RW", "g_LDPC_ENC_CODEWRD_47.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_48, '{}, 13'h0160, "RW", "g_LDPC_ENC_CODEWRD_48.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_49, '{}, 13'h0164, "RW", "g_LDPC_ENC_CODEWRD_49.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_50, '{}, 13'h0168, "RW", "g_LDPC_ENC_CODEWRD_50.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_51, '{}, 13'h016c, "RW", "g_LDPC_ENC_CODEWRD_51.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_52, '{}, 13'h0170, "RW", "g_LDPC_ENC_CODEWRD_52.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_53, '{}, 13'h0174, "RW", "g_LDPC_ENC_CODEWRD_53.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_54, '{}, 13'h0178, "RW", "g_LDPC_ENC_CODEWRD_54.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_55, '{}, 13'h017c, "RW", "g_LDPC_ENC_CODEWRD_55.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_56, '{}, 13'h0180, "RW", "g_LDPC_ENC_CODEWRD_56.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_57, '{}, 13'h0184, "RW", "g_LDPC_ENC_CODEWRD_57.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_58, '{}, 13'h0188, "RW", "g_LDPC_ENC_CODEWRD_58.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_59, '{}, 13'h018c, "RW", "g_LDPC_ENC_CODEWRD_59.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_60, '{}, 13'h0190, "RW", "g_LDPC_ENC_CODEWRD_60.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_61, '{}, 13'h0194, "RW", "g_LDPC_ENC_CODEWRD_61.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_62, '{}, 13'h0198, "RW", "g_LDPC_ENC_CODEWRD_62.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_63, '{}, 13'h019c, "RW", "g_LDPC_ENC_CODEWRD_63.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_64, '{}, 13'h01a0, "RW", "g_LDPC_ENC_CODEWRD_64.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_65, '{}, 13'h01a4, "RW", "g_LDPC_ENC_CODEWRD_65.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_66, '{}, 13'h01a8, "RW", "g_LDPC_ENC_CODEWRD_66.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_67, '{}, 13'h01ac, "RW", "g_LDPC_ENC_CODEWRD_67.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_68, '{}, 13'h01b0, "RW", "g_LDPC_ENC_CODEWRD_68.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_69, '{}, 13'h01b4, "RW", "g_LDPC_ENC_CODEWRD_69.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_70, '{}, 13'h01b8, "RW", "g_LDPC_ENC_CODEWRD_70.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_71, '{}, 13'h01bc, "RW", "g_LDPC_ENC_CODEWRD_71.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_72, '{}, 13'h01c0, "RW", "g_LDPC_ENC_CODEWRD_72.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_73, '{}, 13'h01c4, "RW", "g_LDPC_ENC_CODEWRD_73.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_74, '{}, 13'h01c8, "RW", "g_LDPC_ENC_CODEWRD_74.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_75, '{}, 13'h01cc, "RW", "g_LDPC_ENC_CODEWRD_75.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_76, '{}, 13'h01d0, "RW", "g_LDPC_ENC_CODEWRD_76.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_77, '{}, 13'h01d4, "RW", "g_LDPC_ENC_CODEWRD_77.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_78, '{}, 13'h01d8, "RW", "g_LDPC_ENC_CODEWRD_78.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_79, '{}, 13'h01dc, "RW", "g_LDPC_ENC_CODEWRD_79.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_80, '{}, 13'h01e0, "RW", "g_LDPC_ENC_CODEWRD_80.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_81, '{}, 13'h01e4, "RW", "g_LDPC_ENC_CODEWRD_81.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_82, '{}, 13'h01e8, "RW", "g_LDPC_ENC_CODEWRD_82.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_83, '{}, 13'h01ec, "RW", "g_LDPC_ENC_CODEWRD_83.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_84, '{}, 13'h01f0, "RW", "g_LDPC_ENC_CODEWRD_84.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_85, '{}, 13'h01f4, "RW", "g_LDPC_ENC_CODEWRD_85.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_86, '{}, 13'h01f8, "RW", "g_LDPC_ENC_CODEWRD_86.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_87, '{}, 13'h01fc, "RW", "g_LDPC_ENC_CODEWRD_87.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_88, '{}, 13'h0200, "RW", "g_LDPC_ENC_CODEWRD_88.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_89, '{}, 13'h0204, "RW", "g_LDPC_ENC_CODEWRD_89.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_90, '{}, 13'h0208, "RW", "g_LDPC_ENC_CODEWRD_90.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_91, '{}, 13'h020c, "RW", "g_LDPC_ENC_CODEWRD_91.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_92, '{}, 13'h0210, "RW", "g_LDPC_ENC_CODEWRD_92.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_93, '{}, 13'h0214, "RW", "g_LDPC_ENC_CODEWRD_93.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_94, '{}, 13'h0218, "RW", "g_LDPC_ENC_CODEWRD_94.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_95, '{}, 13'h021c, "RW", "g_LDPC_ENC_CODEWRD_95.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_96, '{}, 13'h0220, "RW", "g_LDPC_ENC_CODEWRD_96.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_97, '{}, 13'h0224, "RW", "g_LDPC_ENC_CODEWRD_97.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_98, '{}, 13'h0228, "RW", "g_LDPC_ENC_CODEWRD_98.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_99, '{}, 13'h022c, "RW", "g_LDPC_ENC_CODEWRD_99.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_100, '{}, 13'h0230, "RW", "g_LDPC_ENC_CODEWRD_100.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_101, '{}, 13'h0234, "RW", "g_LDPC_ENC_CODEWRD_101.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_102, '{}, 13'h0238, "RW", "g_LDPC_ENC_CODEWRD_102.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_103, '{}, 13'h023c, "RW", "g_LDPC_ENC_CODEWRD_103.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_104, '{}, 13'h0240, "RW", "g_LDPC_ENC_CODEWRD_104.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_105, '{}, 13'h0244, "RW", "g_LDPC_ENC_CODEWRD_105.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_106, '{}, 13'h0248, "RW", "g_LDPC_ENC_CODEWRD_106.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_107, '{}, 13'h024c, "RW", "g_LDPC_ENC_CODEWRD_107.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_108, '{}, 13'h0250, "RW", "g_LDPC_ENC_CODEWRD_108.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_109, '{}, 13'h0254, "RW", "g_LDPC_ENC_CODEWRD_109.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_110, '{}, 13'h0258, "RW", "g_LDPC_ENC_CODEWRD_110.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_111, '{}, 13'h025c, "RW", "g_LDPC_ENC_CODEWRD_111.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_112, '{}, 13'h0260, "RW", "g_LDPC_ENC_CODEWRD_112.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_113, '{}, 13'h0264, "RW", "g_LDPC_ENC_CODEWRD_113.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_114, '{}, 13'h0268, "RW", "g_LDPC_ENC_CODEWRD_114.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_115, '{}, 13'h026c, "RW", "g_LDPC_ENC_CODEWRD_115.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_116, '{}, 13'h0270, "RW", "g_LDPC_ENC_CODEWRD_116.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_117, '{}, 13'h0274, "RW", "g_LDPC_ENC_CODEWRD_117.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_118, '{}, 13'h0278, "RW", "g_LDPC_ENC_CODEWRD_118.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_119, '{}, 13'h027c, "RW", "g_LDPC_ENC_CODEWRD_119.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_120, '{}, 13'h0280, "RW", "g_LDPC_ENC_CODEWRD_120.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_121, '{}, 13'h0284, "RW", "g_LDPC_ENC_CODEWRD_121.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_122, '{}, 13'h0288, "RW", "g_LDPC_ENC_CODEWRD_122.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_123, '{}, 13'h028c, "RW", "g_LDPC_ENC_CODEWRD_123.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_124, '{}, 13'h0290, "RW", "g_LDPC_ENC_CODEWRD_124.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_125, '{}, 13'h0294, "RW", "g_LDPC_ENC_CODEWRD_125.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_126, '{}, 13'h0298, "RW", "g_LDPC_ENC_CODEWRD_126.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_127, '{}, 13'h029c, "RW", "g_LDPC_ENC_CODEWRD_127.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_128, '{}, 13'h02a0, "RW", "g_LDPC_ENC_CODEWRD_128.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_129, '{}, 13'h02a4, "RW", "g_LDPC_ENC_CODEWRD_129.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_130, '{}, 13'h02a8, "RW", "g_LDPC_ENC_CODEWRD_130.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_131, '{}, 13'h02ac, "RW", "g_LDPC_ENC_CODEWRD_131.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_132, '{}, 13'h02b0, "RW", "g_LDPC_ENC_CODEWRD_132.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_133, '{}, 13'h02b4, "RW", "g_LDPC_ENC_CODEWRD_133.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_134, '{}, 13'h02b8, "RW", "g_LDPC_ENC_CODEWRD_134.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_135, '{}, 13'h02bc, "RW", "g_LDPC_ENC_CODEWRD_135.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_136, '{}, 13'h02c0, "RW", "g_LDPC_ENC_CODEWRD_136.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_137, '{}, 13'h02c4, "RW", "g_LDPC_ENC_CODEWRD_137.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_138, '{}, 13'h02c8, "RW", "g_LDPC_ENC_CODEWRD_138.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_139, '{}, 13'h02cc, "RW", "g_LDPC_ENC_CODEWRD_139.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_140, '{}, 13'h02d0, "RW", "g_LDPC_ENC_CODEWRD_140.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_141, '{}, 13'h02d4, "RW", "g_LDPC_ENC_CODEWRD_141.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_142, '{}, 13'h02d8, "RW", "g_LDPC_ENC_CODEWRD_142.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_143, '{}, 13'h02dc, "RW", "g_LDPC_ENC_CODEWRD_143.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_144, '{}, 13'h02e0, "RW", "g_LDPC_ENC_CODEWRD_144.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_145, '{}, 13'h02e4, "RW", "g_LDPC_ENC_CODEWRD_145.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_146, '{}, 13'h02e8, "RW", "g_LDPC_ENC_CODEWRD_146.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_147, '{}, 13'h02ec, "RW", "g_LDPC_ENC_CODEWRD_147.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_148, '{}, 13'h02f0, "RW", "g_LDPC_ENC_CODEWRD_148.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_149, '{}, 13'h02f4, "RW", "g_LDPC_ENC_CODEWRD_149.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_150, '{}, 13'h02f8, "RW", "g_LDPC_ENC_CODEWRD_150.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_151, '{}, 13'h02fc, "RW", "g_LDPC_ENC_CODEWRD_151.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_152, '{}, 13'h0300, "RW", "g_LDPC_ENC_CODEWRD_152.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_153, '{}, 13'h0304, "RW", "g_LDPC_ENC_CODEWRD_153.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_154, '{}, 13'h0308, "RW", "g_LDPC_ENC_CODEWRD_154.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_155, '{}, 13'h030c, "RW", "g_LDPC_ENC_CODEWRD_155.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_156, '{}, 13'h0310, "RW", "g_LDPC_ENC_CODEWRD_156.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_157, '{}, 13'h0314, "RW", "g_LDPC_ENC_CODEWRD_157.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_158, '{}, 13'h0318, "RW", "g_LDPC_ENC_CODEWRD_158.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_159, '{}, 13'h031c, "RW", "g_LDPC_ENC_CODEWRD_159.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_160, '{}, 13'h0320, "RW", "g_LDPC_ENC_CODEWRD_160.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_161, '{}, 13'h0324, "RW", "g_LDPC_ENC_CODEWRD_161.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_162, '{}, 13'h0328, "RW", "g_LDPC_ENC_CODEWRD_162.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_163, '{}, 13'h032c, "RW", "g_LDPC_ENC_CODEWRD_163.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_164, '{}, 13'h0330, "RW", "g_LDPC_ENC_CODEWRD_164.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_165, '{}, 13'h0334, "RW", "g_LDPC_ENC_CODEWRD_165.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_166, '{}, 13'h0338, "RW", "g_LDPC_ENC_CODEWRD_166.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_167, '{}, 13'h033c, "RW", "g_LDPC_ENC_CODEWRD_167.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_168, '{}, 13'h0340, "RW", "g_LDPC_ENC_CODEWRD_168.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_169, '{}, 13'h0344, "RW", "g_LDPC_ENC_CODEWRD_169.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_170, '{}, 13'h0348, "RW", "g_LDPC_ENC_CODEWRD_170.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_171, '{}, 13'h034c, "RW", "g_LDPC_ENC_CODEWRD_171.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_172, '{}, 13'h0350, "RW", "g_LDPC_ENC_CODEWRD_172.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_173, '{}, 13'h0354, "RW", "g_LDPC_ENC_CODEWRD_173.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_174, '{}, 13'h0358, "RW", "g_LDPC_ENC_CODEWRD_174.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_175, '{}, 13'h035c, "RW", "g_LDPC_ENC_CODEWRD_175.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_176, '{}, 13'h0360, "RW", "g_LDPC_ENC_CODEWRD_176.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_177, '{}, 13'h0364, "RW", "g_LDPC_ENC_CODEWRD_177.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_178, '{}, 13'h0368, "RW", "g_LDPC_ENC_CODEWRD_178.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_179, '{}, 13'h036c, "RW", "g_LDPC_ENC_CODEWRD_179.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_180, '{}, 13'h0370, "RW", "g_LDPC_ENC_CODEWRD_180.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_181, '{}, 13'h0374, "RW", "g_LDPC_ENC_CODEWRD_181.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_182, '{}, 13'h0378, "RW", "g_LDPC_ENC_CODEWRD_182.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_183, '{}, 13'h037c, "RW", "g_LDPC_ENC_CODEWRD_183.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_184, '{}, 13'h0380, "RW", "g_LDPC_ENC_CODEWRD_184.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_185, '{}, 13'h0384, "RW", "g_LDPC_ENC_CODEWRD_185.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_186, '{}, 13'h0388, "RW", "g_LDPC_ENC_CODEWRD_186.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_187, '{}, 13'h038c, "RW", "g_LDPC_ENC_CODEWRD_187.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_188, '{}, 13'h0390, "RW", "g_LDPC_ENC_CODEWRD_188.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_189, '{}, 13'h0394, "RW", "g_LDPC_ENC_CODEWRD_189.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_190, '{}, 13'h0398, "RW", "g_LDPC_ENC_CODEWRD_190.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_191, '{}, 13'h039c, "RW", "g_LDPC_ENC_CODEWRD_191.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_192, '{}, 13'h03a0, "RW", "g_LDPC_ENC_CODEWRD_192.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_193, '{}, 13'h03a4, "RW", "g_LDPC_ENC_CODEWRD_193.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_194, '{}, 13'h03a8, "RW", "g_LDPC_ENC_CODEWRD_194.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_195, '{}, 13'h03ac, "RW", "g_LDPC_ENC_CODEWRD_195.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_196, '{}, 13'h03b0, "RW", "g_LDPC_ENC_CODEWRD_196.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_197, '{}, 13'h03b4, "RW", "g_LDPC_ENC_CODEWRD_197.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_198, '{}, 13'h03b8, "RW", "g_LDPC_ENC_CODEWRD_198.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_199, '{}, 13'h03bc, "RW", "g_LDPC_ENC_CODEWRD_199.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_200, '{}, 13'h03c0, "RW", "g_LDPC_ENC_CODEWRD_200.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_201, '{}, 13'h03c4, "RW", "g_LDPC_ENC_CODEWRD_201.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_202, '{}, 13'h03c8, "RW", "g_LDPC_ENC_CODEWRD_202.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_203, '{}, 13'h03cc, "RW", "g_LDPC_ENC_CODEWRD_203.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_204, '{}, 13'h03d0, "RW", "g_LDPC_ENC_CODEWRD_204.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_205, '{}, 13'h03d4, "RW", "g_LDPC_ENC_CODEWRD_205.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_206, '{}, 13'h03d8, "RW", "g_LDPC_ENC_CODEWRD_206.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_207, '{}, 13'h03dc, "RW", "g_LDPC_ENC_CODEWRD_207.u_register")
      `rggen_ral_create_reg(LDPC_ENC_CODEWRD_VLD, '{}, 13'h03e0, "RW", "g_LDPC_ENC_CODEWRD_VLD.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_0, '{}, 13'h03e4, "RW", "g_LDPC_DEC_CODEWRD_0.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_1, '{}, 13'h03e8, "RW", "g_LDPC_DEC_CODEWRD_1.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_2, '{}, 13'h03ec, "RW", "g_LDPC_DEC_CODEWRD_2.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_3, '{}, 13'h03f0, "RW", "g_LDPC_DEC_CODEWRD_3.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_4, '{}, 13'h03f4, "RW", "g_LDPC_DEC_CODEWRD_4.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_5, '{}, 13'h03f8, "RW", "g_LDPC_DEC_CODEWRD_5.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_6, '{}, 13'h03fc, "RW", "g_LDPC_DEC_CODEWRD_6.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_7, '{}, 13'h0400, "RW", "g_LDPC_DEC_CODEWRD_7.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_8, '{}, 13'h0404, "RW", "g_LDPC_DEC_CODEWRD_8.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_9, '{}, 13'h0408, "RW", "g_LDPC_DEC_CODEWRD_9.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_10, '{}, 13'h040c, "RW", "g_LDPC_DEC_CODEWRD_10.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_11, '{}, 13'h0410, "RW", "g_LDPC_DEC_CODEWRD_11.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_12, '{}, 13'h0414, "RW", "g_LDPC_DEC_CODEWRD_12.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_13, '{}, 13'h0418, "RW", "g_LDPC_DEC_CODEWRD_13.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_14, '{}, 13'h041c, "RW", "g_LDPC_DEC_CODEWRD_14.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_15, '{}, 13'h0420, "RW", "g_LDPC_DEC_CODEWRD_15.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_16, '{}, 13'h0424, "RW", "g_LDPC_DEC_CODEWRD_16.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_17, '{}, 13'h0428, "RW", "g_LDPC_DEC_CODEWRD_17.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_18, '{}, 13'h042c, "RW", "g_LDPC_DEC_CODEWRD_18.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_19, '{}, 13'h0430, "RW", "g_LDPC_DEC_CODEWRD_19.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_20, '{}, 13'h0434, "RW", "g_LDPC_DEC_CODEWRD_20.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_21, '{}, 13'h0438, "RW", "g_LDPC_DEC_CODEWRD_21.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_22, '{}, 13'h043c, "RW", "g_LDPC_DEC_CODEWRD_22.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_23, '{}, 13'h0440, "RW", "g_LDPC_DEC_CODEWRD_23.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_24, '{}, 13'h0444, "RW", "g_LDPC_DEC_CODEWRD_24.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_25, '{}, 13'h0448, "RW", "g_LDPC_DEC_CODEWRD_25.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_26, '{}, 13'h044c, "RW", "g_LDPC_DEC_CODEWRD_26.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_27, '{}, 13'h0450, "RW", "g_LDPC_DEC_CODEWRD_27.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_28, '{}, 13'h0454, "RW", "g_LDPC_DEC_CODEWRD_28.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_29, '{}, 13'h0458, "RW", "g_LDPC_DEC_CODEWRD_29.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_30, '{}, 13'h045c, "RW", "g_LDPC_DEC_CODEWRD_30.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_31, '{}, 13'h0460, "RW", "g_LDPC_DEC_CODEWRD_31.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_32, '{}, 13'h0464, "RW", "g_LDPC_DEC_CODEWRD_32.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_33, '{}, 13'h0468, "RW", "g_LDPC_DEC_CODEWRD_33.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_34, '{}, 13'h046c, "RW", "g_LDPC_DEC_CODEWRD_34.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_35, '{}, 13'h0470, "RW", "g_LDPC_DEC_CODEWRD_35.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_36, '{}, 13'h0474, "RW", "g_LDPC_DEC_CODEWRD_36.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_37, '{}, 13'h0478, "RW", "g_LDPC_DEC_CODEWRD_37.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_38, '{}, 13'h047c, "RW", "g_LDPC_DEC_CODEWRD_38.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_39, '{}, 13'h0480, "RW", "g_LDPC_DEC_CODEWRD_39.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_40, '{}, 13'h0484, "RW", "g_LDPC_DEC_CODEWRD_40.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_41, '{}, 13'h0488, "RW", "g_LDPC_DEC_CODEWRD_41.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_42, '{}, 13'h048c, "RW", "g_LDPC_DEC_CODEWRD_42.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_43, '{}, 13'h0490, "RW", "g_LDPC_DEC_CODEWRD_43.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_44, '{}, 13'h0494, "RW", "g_LDPC_DEC_CODEWRD_44.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_45, '{}, 13'h0498, "RW", "g_LDPC_DEC_CODEWRD_45.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_46, '{}, 13'h049c, "RW", "g_LDPC_DEC_CODEWRD_46.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_47, '{}, 13'h04a0, "RW", "g_LDPC_DEC_CODEWRD_47.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_48, '{}, 13'h04a4, "RW", "g_LDPC_DEC_CODEWRD_48.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_49, '{}, 13'h04a8, "RW", "g_LDPC_DEC_CODEWRD_49.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_50, '{}, 13'h04ac, "RW", "g_LDPC_DEC_CODEWRD_50.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_51, '{}, 13'h04b0, "RW", "g_LDPC_DEC_CODEWRD_51.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_52, '{}, 13'h04b4, "RW", "g_LDPC_DEC_CODEWRD_52.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_53, '{}, 13'h04b8, "RW", "g_LDPC_DEC_CODEWRD_53.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_54, '{}, 13'h04bc, "RW", "g_LDPC_DEC_CODEWRD_54.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_55, '{}, 13'h04c0, "RW", "g_LDPC_DEC_CODEWRD_55.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_56, '{}, 13'h04c4, "RW", "g_LDPC_DEC_CODEWRD_56.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_57, '{}, 13'h04c8, "RW", "g_LDPC_DEC_CODEWRD_57.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_58, '{}, 13'h04cc, "RW", "g_LDPC_DEC_CODEWRD_58.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_59, '{}, 13'h04d0, "RW", "g_LDPC_DEC_CODEWRD_59.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_60, '{}, 13'h04d4, "RW", "g_LDPC_DEC_CODEWRD_60.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_61, '{}, 13'h04d8, "RW", "g_LDPC_DEC_CODEWRD_61.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_62, '{}, 13'h04dc, "RW", "g_LDPC_DEC_CODEWRD_62.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_63, '{}, 13'h04e0, "RW", "g_LDPC_DEC_CODEWRD_63.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_64, '{}, 13'h04e4, "RW", "g_LDPC_DEC_CODEWRD_64.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_65, '{}, 13'h04e8, "RW", "g_LDPC_DEC_CODEWRD_65.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_66, '{}, 13'h04ec, "RW", "g_LDPC_DEC_CODEWRD_66.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_67, '{}, 13'h04f0, "RW", "g_LDPC_DEC_CODEWRD_67.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_68, '{}, 13'h04f4, "RW", "g_LDPC_DEC_CODEWRD_68.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_69, '{}, 13'h04f8, "RW", "g_LDPC_DEC_CODEWRD_69.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_70, '{}, 13'h04fc, "RW", "g_LDPC_DEC_CODEWRD_70.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_71, '{}, 13'h0500, "RW", "g_LDPC_DEC_CODEWRD_71.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_72, '{}, 13'h0504, "RW", "g_LDPC_DEC_CODEWRD_72.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_73, '{}, 13'h0508, "RW", "g_LDPC_DEC_CODEWRD_73.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_74, '{}, 13'h050c, "RW", "g_LDPC_DEC_CODEWRD_74.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_75, '{}, 13'h0510, "RW", "g_LDPC_DEC_CODEWRD_75.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_76, '{}, 13'h0514, "RW", "g_LDPC_DEC_CODEWRD_76.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_77, '{}, 13'h0518, "RW", "g_LDPC_DEC_CODEWRD_77.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_78, '{}, 13'h051c, "RW", "g_LDPC_DEC_CODEWRD_78.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_79, '{}, 13'h0520, "RW", "g_LDPC_DEC_CODEWRD_79.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_80, '{}, 13'h0524, "RW", "g_LDPC_DEC_CODEWRD_80.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_81, '{}, 13'h0528, "RW", "g_LDPC_DEC_CODEWRD_81.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_82, '{}, 13'h052c, "RW", "g_LDPC_DEC_CODEWRD_82.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_83, '{}, 13'h0530, "RW", "g_LDPC_DEC_CODEWRD_83.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_84, '{}, 13'h0534, "RW", "g_LDPC_DEC_CODEWRD_84.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_85, '{}, 13'h0538, "RW", "g_LDPC_DEC_CODEWRD_85.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_86, '{}, 13'h053c, "RW", "g_LDPC_DEC_CODEWRD_86.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_87, '{}, 13'h0540, "RW", "g_LDPC_DEC_CODEWRD_87.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_88, '{}, 13'h0544, "RW", "g_LDPC_DEC_CODEWRD_88.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_89, '{}, 13'h0548, "RW", "g_LDPC_DEC_CODEWRD_89.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_90, '{}, 13'h054c, "RW", "g_LDPC_DEC_CODEWRD_90.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_91, '{}, 13'h0550, "RW", "g_LDPC_DEC_CODEWRD_91.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_92, '{}, 13'h0554, "RW", "g_LDPC_DEC_CODEWRD_92.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_93, '{}, 13'h0558, "RW", "g_LDPC_DEC_CODEWRD_93.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_94, '{}, 13'h055c, "RW", "g_LDPC_DEC_CODEWRD_94.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_95, '{}, 13'h0560, "RW", "g_LDPC_DEC_CODEWRD_95.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_96, '{}, 13'h0564, "RW", "g_LDPC_DEC_CODEWRD_96.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_97, '{}, 13'h0568, "RW", "g_LDPC_DEC_CODEWRD_97.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_98, '{}, 13'h056c, "RW", "g_LDPC_DEC_CODEWRD_98.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_99, '{}, 13'h0570, "RW", "g_LDPC_DEC_CODEWRD_99.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_100, '{}, 13'h0574, "RW", "g_LDPC_DEC_CODEWRD_100.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_101, '{}, 13'h0578, "RW", "g_LDPC_DEC_CODEWRD_101.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_102, '{}, 13'h057c, "RW", "g_LDPC_DEC_CODEWRD_102.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_103, '{}, 13'h0580, "RW", "g_LDPC_DEC_CODEWRD_103.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_104, '{}, 13'h0584, "RW", "g_LDPC_DEC_CODEWRD_104.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_105, '{}, 13'h0588, "RW", "g_LDPC_DEC_CODEWRD_105.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_106, '{}, 13'h058c, "RW", "g_LDPC_DEC_CODEWRD_106.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_107, '{}, 13'h0590, "RW", "g_LDPC_DEC_CODEWRD_107.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_108, '{}, 13'h0594, "RW", "g_LDPC_DEC_CODEWRD_108.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_109, '{}, 13'h0598, "RW", "g_LDPC_DEC_CODEWRD_109.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_110, '{}, 13'h059c, "RW", "g_LDPC_DEC_CODEWRD_110.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_111, '{}, 13'h05a0, "RW", "g_LDPC_DEC_CODEWRD_111.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_112, '{}, 13'h05a4, "RW", "g_LDPC_DEC_CODEWRD_112.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_113, '{}, 13'h05a8, "RW", "g_LDPC_DEC_CODEWRD_113.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_114, '{}, 13'h05ac, "RW", "g_LDPC_DEC_CODEWRD_114.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_115, '{}, 13'h05b0, "RW", "g_LDPC_DEC_CODEWRD_115.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_116, '{}, 13'h05b4, "RW", "g_LDPC_DEC_CODEWRD_116.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_117, '{}, 13'h05b8, "RW", "g_LDPC_DEC_CODEWRD_117.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_118, '{}, 13'h05bc, "RW", "g_LDPC_DEC_CODEWRD_118.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_119, '{}, 13'h05c0, "RW", "g_LDPC_DEC_CODEWRD_119.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_120, '{}, 13'h05c4, "RW", "g_LDPC_DEC_CODEWRD_120.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_121, '{}, 13'h05c8, "RW", "g_LDPC_DEC_CODEWRD_121.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_122, '{}, 13'h05cc, "RW", "g_LDPC_DEC_CODEWRD_122.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_123, '{}, 13'h05d0, "RW", "g_LDPC_DEC_CODEWRD_123.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_124, '{}, 13'h05d4, "RW", "g_LDPC_DEC_CODEWRD_124.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_125, '{}, 13'h05d8, "RW", "g_LDPC_DEC_CODEWRD_125.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_126, '{}, 13'h05dc, "RW", "g_LDPC_DEC_CODEWRD_126.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_127, '{}, 13'h05e0, "RW", "g_LDPC_DEC_CODEWRD_127.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_128, '{}, 13'h05e4, "RW", "g_LDPC_DEC_CODEWRD_128.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_129, '{}, 13'h05e8, "RW", "g_LDPC_DEC_CODEWRD_129.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_130, '{}, 13'h05ec, "RW", "g_LDPC_DEC_CODEWRD_130.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_131, '{}, 13'h05f0, "RW", "g_LDPC_DEC_CODEWRD_131.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_132, '{}, 13'h05f4, "RW", "g_LDPC_DEC_CODEWRD_132.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_133, '{}, 13'h05f8, "RW", "g_LDPC_DEC_CODEWRD_133.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_134, '{}, 13'h05fc, "RW", "g_LDPC_DEC_CODEWRD_134.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_135, '{}, 13'h0600, "RW", "g_LDPC_DEC_CODEWRD_135.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_136, '{}, 13'h0604, "RW", "g_LDPC_DEC_CODEWRD_136.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_137, '{}, 13'h0608, "RW", "g_LDPC_DEC_CODEWRD_137.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_138, '{}, 13'h060c, "RW", "g_LDPC_DEC_CODEWRD_138.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_139, '{}, 13'h0610, "RW", "g_LDPC_DEC_CODEWRD_139.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_140, '{}, 13'h0614, "RW", "g_LDPC_DEC_CODEWRD_140.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_141, '{}, 13'h0618, "RW", "g_LDPC_DEC_CODEWRD_141.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_142, '{}, 13'h061c, "RW", "g_LDPC_DEC_CODEWRD_142.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_143, '{}, 13'h0620, "RW", "g_LDPC_DEC_CODEWRD_143.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_144, '{}, 13'h0624, "RW", "g_LDPC_DEC_CODEWRD_144.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_145, '{}, 13'h0628, "RW", "g_LDPC_DEC_CODEWRD_145.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_146, '{}, 13'h062c, "RW", "g_LDPC_DEC_CODEWRD_146.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_147, '{}, 13'h0630, "RW", "g_LDPC_DEC_CODEWRD_147.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_148, '{}, 13'h0634, "RW", "g_LDPC_DEC_CODEWRD_148.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_149, '{}, 13'h0638, "RW", "g_LDPC_DEC_CODEWRD_149.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_150, '{}, 13'h063c, "RW", "g_LDPC_DEC_CODEWRD_150.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_151, '{}, 13'h0640, "RW", "g_LDPC_DEC_CODEWRD_151.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_152, '{}, 13'h0644, "RW", "g_LDPC_DEC_CODEWRD_152.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_153, '{}, 13'h0648, "RW", "g_LDPC_DEC_CODEWRD_153.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_154, '{}, 13'h064c, "RW", "g_LDPC_DEC_CODEWRD_154.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_155, '{}, 13'h0650, "RW", "g_LDPC_DEC_CODEWRD_155.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_156, '{}, 13'h0654, "RW", "g_LDPC_DEC_CODEWRD_156.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_157, '{}, 13'h0658, "RW", "g_LDPC_DEC_CODEWRD_157.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_158, '{}, 13'h065c, "RW", "g_LDPC_DEC_CODEWRD_158.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_159, '{}, 13'h0660, "RW", "g_LDPC_DEC_CODEWRD_159.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_160, '{}, 13'h0664, "RW", "g_LDPC_DEC_CODEWRD_160.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_161, '{}, 13'h0668, "RW", "g_LDPC_DEC_CODEWRD_161.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_162, '{}, 13'h066c, "RW", "g_LDPC_DEC_CODEWRD_162.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_163, '{}, 13'h0670, "RW", "g_LDPC_DEC_CODEWRD_163.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_164, '{}, 13'h0674, "RW", "g_LDPC_DEC_CODEWRD_164.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_165, '{}, 13'h0678, "RW", "g_LDPC_DEC_CODEWRD_165.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_166, '{}, 13'h067c, "RW", "g_LDPC_DEC_CODEWRD_166.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_167, '{}, 13'h0680, "RW", "g_LDPC_DEC_CODEWRD_167.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_168, '{}, 13'h0684, "RW", "g_LDPC_DEC_CODEWRD_168.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_169, '{}, 13'h0688, "RW", "g_LDPC_DEC_CODEWRD_169.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_170, '{}, 13'h068c, "RW", "g_LDPC_DEC_CODEWRD_170.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_171, '{}, 13'h0690, "RW", "g_LDPC_DEC_CODEWRD_171.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_172, '{}, 13'h0694, "RW", "g_LDPC_DEC_CODEWRD_172.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_173, '{}, 13'h0698, "RW", "g_LDPC_DEC_CODEWRD_173.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_174, '{}, 13'h069c, "RW", "g_LDPC_DEC_CODEWRD_174.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_175, '{}, 13'h06a0, "RW", "g_LDPC_DEC_CODEWRD_175.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_176, '{}, 13'h06a4, "RW", "g_LDPC_DEC_CODEWRD_176.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_177, '{}, 13'h06a8, "RW", "g_LDPC_DEC_CODEWRD_177.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_178, '{}, 13'h06ac, "RW", "g_LDPC_DEC_CODEWRD_178.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_179, '{}, 13'h06b0, "RW", "g_LDPC_DEC_CODEWRD_179.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_180, '{}, 13'h06b4, "RW", "g_LDPC_DEC_CODEWRD_180.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_181, '{}, 13'h06b8, "RW", "g_LDPC_DEC_CODEWRD_181.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_182, '{}, 13'h06bc, "RW", "g_LDPC_DEC_CODEWRD_182.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_183, '{}, 13'h06c0, "RW", "g_LDPC_DEC_CODEWRD_183.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_184, '{}, 13'h06c4, "RW", "g_LDPC_DEC_CODEWRD_184.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_185, '{}, 13'h06c8, "RW", "g_LDPC_DEC_CODEWRD_185.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_186, '{}, 13'h06cc, "RW", "g_LDPC_DEC_CODEWRD_186.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_187, '{}, 13'h06d0, "RW", "g_LDPC_DEC_CODEWRD_187.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_188, '{}, 13'h06d4, "RW", "g_LDPC_DEC_CODEWRD_188.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_189, '{}, 13'h06d8, "RW", "g_LDPC_DEC_CODEWRD_189.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_190, '{}, 13'h06dc, "RW", "g_LDPC_DEC_CODEWRD_190.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_191, '{}, 13'h06e0, "RW", "g_LDPC_DEC_CODEWRD_191.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_192, '{}, 13'h06e4, "RW", "g_LDPC_DEC_CODEWRD_192.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_193, '{}, 13'h06e8, "RW", "g_LDPC_DEC_CODEWRD_193.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_194, '{}, 13'h06ec, "RW", "g_LDPC_DEC_CODEWRD_194.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_195, '{}, 13'h06f0, "RW", "g_LDPC_DEC_CODEWRD_195.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_196, '{}, 13'h06f4, "RW", "g_LDPC_DEC_CODEWRD_196.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_197, '{}, 13'h06f8, "RW", "g_LDPC_DEC_CODEWRD_197.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_198, '{}, 13'h06fc, "RW", "g_LDPC_DEC_CODEWRD_198.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_199, '{}, 13'h0700, "RW", "g_LDPC_DEC_CODEWRD_199.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_200, '{}, 13'h0704, "RW", "g_LDPC_DEC_CODEWRD_200.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_201, '{}, 13'h0708, "RW", "g_LDPC_DEC_CODEWRD_201.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_202, '{}, 13'h070c, "RW", "g_LDPC_DEC_CODEWRD_202.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_203, '{}, 13'h0710, "RW", "g_LDPC_DEC_CODEWRD_203.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_204, '{}, 13'h0714, "RW", "g_LDPC_DEC_CODEWRD_204.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_205, '{}, 13'h0718, "RW", "g_LDPC_DEC_CODEWRD_205.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_206, '{}, 13'h071c, "RW", "g_LDPC_DEC_CODEWRD_206.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_207, '{}, 13'h0720, "RW", "g_LDPC_DEC_CODEWRD_207.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_0, '{}, 13'h0724, "RW", "g_LDPC_DEC_EXPSYND_0.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_1, '{}, 13'h0728, "RW", "g_LDPC_DEC_EXPSYND_1.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_2, '{}, 13'h072c, "RW", "g_LDPC_DEC_EXPSYND_2.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_3, '{}, 13'h0730, "RW", "g_LDPC_DEC_EXPSYND_3.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_4, '{}, 13'h0734, "RW", "g_LDPC_DEC_EXPSYND_4.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_5, '{}, 13'h0738, "RW", "g_LDPC_DEC_EXPSYND_5.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_6, '{}, 13'h073c, "RW", "g_LDPC_DEC_EXPSYND_6.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_7, '{}, 13'h0740, "RW", "g_LDPC_DEC_EXPSYND_7.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_8, '{}, 13'h0744, "RW", "g_LDPC_DEC_EXPSYND_8.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_9, '{}, 13'h0748, "RW", "g_LDPC_DEC_EXPSYND_9.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_10, '{}, 13'h074c, "RW", "g_LDPC_DEC_EXPSYND_10.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_11, '{}, 13'h0750, "RW", "g_LDPC_DEC_EXPSYND_11.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_12, '{}, 13'h0754, "RW", "g_LDPC_DEC_EXPSYND_12.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_13, '{}, 13'h0758, "RW", "g_LDPC_DEC_EXPSYND_13.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_14, '{}, 13'h075c, "RW", "g_LDPC_DEC_EXPSYND_14.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_15, '{}, 13'h0760, "RW", "g_LDPC_DEC_EXPSYND_15.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_16, '{}, 13'h0764, "RW", "g_LDPC_DEC_EXPSYND_16.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_17, '{}, 13'h0768, "RW", "g_LDPC_DEC_EXPSYND_17.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_18, '{}, 13'h076c, "RW", "g_LDPC_DEC_EXPSYND_18.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_19, '{}, 13'h0770, "RW", "g_LDPC_DEC_EXPSYND_19.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_20, '{}, 13'h0774, "RW", "g_LDPC_DEC_EXPSYND_20.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_21, '{}, 13'h0778, "RW", "g_LDPC_DEC_EXPSYND_21.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_22, '{}, 13'h077c, "RW", "g_LDPC_DEC_EXPSYND_22.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_23, '{}, 13'h0780, "RW", "g_LDPC_DEC_EXPSYND_23.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_24, '{}, 13'h0784, "RW", "g_LDPC_DEC_EXPSYND_24.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_25, '{}, 13'h0788, "RW", "g_LDPC_DEC_EXPSYND_25.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_26, '{}, 13'h078c, "RW", "g_LDPC_DEC_EXPSYND_26.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_27, '{}, 13'h0790, "RW", "g_LDPC_DEC_EXPSYND_27.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_28, '{}, 13'h0794, "RW", "g_LDPC_DEC_EXPSYND_28.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_29, '{}, 13'h0798, "RW", "g_LDPC_DEC_EXPSYND_29.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_30, '{}, 13'h079c, "RW", "g_LDPC_DEC_EXPSYND_30.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_31, '{}, 13'h07a0, "RW", "g_LDPC_DEC_EXPSYND_31.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_32, '{}, 13'h07a4, "RW", "g_LDPC_DEC_EXPSYND_32.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_33, '{}, 13'h07a8, "RW", "g_LDPC_DEC_EXPSYND_33.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_34, '{}, 13'h07ac, "RW", "g_LDPC_DEC_EXPSYND_34.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_35, '{}, 13'h07b0, "RW", "g_LDPC_DEC_EXPSYND_35.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_36, '{}, 13'h07b4, "RW", "g_LDPC_DEC_EXPSYND_36.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_37, '{}, 13'h07b8, "RW", "g_LDPC_DEC_EXPSYND_37.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_38, '{}, 13'h07bc, "RW", "g_LDPC_DEC_EXPSYND_38.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_39, '{}, 13'h07c0, "RW", "g_LDPC_DEC_EXPSYND_39.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_40, '{}, 13'h07c4, "RW", "g_LDPC_DEC_EXPSYND_40.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_41, '{}, 13'h07c8, "RW", "g_LDPC_DEC_EXPSYND_41.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_42, '{}, 13'h07cc, "RW", "g_LDPC_DEC_EXPSYND_42.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_43, '{}, 13'h07d0, "RW", "g_LDPC_DEC_EXPSYND_43.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_44, '{}, 13'h07d4, "RW", "g_LDPC_DEC_EXPSYND_44.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_45, '{}, 13'h07d8, "RW", "g_LDPC_DEC_EXPSYND_45.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_46, '{}, 13'h07dc, "RW", "g_LDPC_DEC_EXPSYND_46.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_47, '{}, 13'h07e0, "RW", "g_LDPC_DEC_EXPSYND_47.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_48, '{}, 13'h07e4, "RW", "g_LDPC_DEC_EXPSYND_48.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_49, '{}, 13'h07e8, "RW", "g_LDPC_DEC_EXPSYND_49.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_50, '{}, 13'h07ec, "RW", "g_LDPC_DEC_EXPSYND_50.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_51, '{}, 13'h07f0, "RW", "g_LDPC_DEC_EXPSYND_51.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_52, '{}, 13'h07f4, "RW", "g_LDPC_DEC_EXPSYND_52.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_53, '{}, 13'h07f8, "RW", "g_LDPC_DEC_EXPSYND_53.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_54, '{}, 13'h07fc, "RW", "g_LDPC_DEC_EXPSYND_54.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_55, '{}, 13'h0800, "RW", "g_LDPC_DEC_EXPSYND_55.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_56, '{}, 13'h0804, "RW", "g_LDPC_DEC_EXPSYND_56.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_57, '{}, 13'h0808, "RW", "g_LDPC_DEC_EXPSYND_57.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_58, '{}, 13'h080c, "RW", "g_LDPC_DEC_EXPSYND_58.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_59, '{}, 13'h0810, "RW", "g_LDPC_DEC_EXPSYND_59.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_60, '{}, 13'h0814, "RW", "g_LDPC_DEC_EXPSYND_60.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_61, '{}, 13'h0818, "RW", "g_LDPC_DEC_EXPSYND_61.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_62, '{}, 13'h081c, "RW", "g_LDPC_DEC_EXPSYND_62.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_63, '{}, 13'h0820, "RW", "g_LDPC_DEC_EXPSYND_63.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_64, '{}, 13'h0824, "RW", "g_LDPC_DEC_EXPSYND_64.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_65, '{}, 13'h0828, "RW", "g_LDPC_DEC_EXPSYND_65.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_66, '{}, 13'h082c, "RW", "g_LDPC_DEC_EXPSYND_66.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_67, '{}, 13'h0830, "RW", "g_LDPC_DEC_EXPSYND_67.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_68, '{}, 13'h0834, "RW", "g_LDPC_DEC_EXPSYND_68.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_69, '{}, 13'h0838, "RW", "g_LDPC_DEC_EXPSYND_69.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_70, '{}, 13'h083c, "RW", "g_LDPC_DEC_EXPSYND_70.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_71, '{}, 13'h0840, "RW", "g_LDPC_DEC_EXPSYND_71.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_72, '{}, 13'h0844, "RW", "g_LDPC_DEC_EXPSYND_72.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_73, '{}, 13'h0848, "RW", "g_LDPC_DEC_EXPSYND_73.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_74, '{}, 13'h084c, "RW", "g_LDPC_DEC_EXPSYND_74.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_75, '{}, 13'h0850, "RW", "g_LDPC_DEC_EXPSYND_75.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_76, '{}, 13'h0854, "RW", "g_LDPC_DEC_EXPSYND_76.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_77, '{}, 13'h0858, "RW", "g_LDPC_DEC_EXPSYND_77.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_78, '{}, 13'h085c, "RW", "g_LDPC_DEC_EXPSYND_78.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_79, '{}, 13'h0860, "RW", "g_LDPC_DEC_EXPSYND_79.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_80, '{}, 13'h0864, "RW", "g_LDPC_DEC_EXPSYND_80.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_81, '{}, 13'h0868, "RW", "g_LDPC_DEC_EXPSYND_81.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_82, '{}, 13'h086c, "RW", "g_LDPC_DEC_EXPSYND_82.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_83, '{}, 13'h0870, "RW", "g_LDPC_DEC_EXPSYND_83.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_84, '{}, 13'h0874, "RW", "g_LDPC_DEC_EXPSYND_84.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_85, '{}, 13'h0878, "RW", "g_LDPC_DEC_EXPSYND_85.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_86, '{}, 13'h087c, "RW", "g_LDPC_DEC_EXPSYND_86.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_87, '{}, 13'h0880, "RW", "g_LDPC_DEC_EXPSYND_87.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_88, '{}, 13'h0884, "RW", "g_LDPC_DEC_EXPSYND_88.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_89, '{}, 13'h0888, "RW", "g_LDPC_DEC_EXPSYND_89.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_90, '{}, 13'h088c, "RW", "g_LDPC_DEC_EXPSYND_90.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_91, '{}, 13'h0890, "RW", "g_LDPC_DEC_EXPSYND_91.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_92, '{}, 13'h0894, "RW", "g_LDPC_DEC_EXPSYND_92.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_93, '{}, 13'h0898, "RW", "g_LDPC_DEC_EXPSYND_93.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_94, '{}, 13'h089c, "RW", "g_LDPC_DEC_EXPSYND_94.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_95, '{}, 13'h08a0, "RW", "g_LDPC_DEC_EXPSYND_95.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_96, '{}, 13'h08a4, "RW", "g_LDPC_DEC_EXPSYND_96.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_97, '{}, 13'h08a8, "RW", "g_LDPC_DEC_EXPSYND_97.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_98, '{}, 13'h08ac, "RW", "g_LDPC_DEC_EXPSYND_98.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_99, '{}, 13'h08b0, "RW", "g_LDPC_DEC_EXPSYND_99.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_100, '{}, 13'h08b4, "RW", "g_LDPC_DEC_EXPSYND_100.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_101, '{}, 13'h08b8, "RW", "g_LDPC_DEC_EXPSYND_101.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_102, '{}, 13'h08bc, "RW", "g_LDPC_DEC_EXPSYND_102.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_103, '{}, 13'h08c0, "RW", "g_LDPC_DEC_EXPSYND_103.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_104, '{}, 13'h08c4, "RW", "g_LDPC_DEC_EXPSYND_104.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_105, '{}, 13'h08c8, "RW", "g_LDPC_DEC_EXPSYND_105.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_106, '{}, 13'h08cc, "RW", "g_LDPC_DEC_EXPSYND_106.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_107, '{}, 13'h08d0, "RW", "g_LDPC_DEC_EXPSYND_107.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_108, '{}, 13'h08d4, "RW", "g_LDPC_DEC_EXPSYND_108.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_109, '{}, 13'h08d8, "RW", "g_LDPC_DEC_EXPSYND_109.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_110, '{}, 13'h08dc, "RW", "g_LDPC_DEC_EXPSYND_110.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_111, '{}, 13'h08e0, "RW", "g_LDPC_DEC_EXPSYND_111.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_112, '{}, 13'h08e4, "RW", "g_LDPC_DEC_EXPSYND_112.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_113, '{}, 13'h08e8, "RW", "g_LDPC_DEC_EXPSYND_113.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_114, '{}, 13'h08ec, "RW", "g_LDPC_DEC_EXPSYND_114.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_115, '{}, 13'h08f0, "RW", "g_LDPC_DEC_EXPSYND_115.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_116, '{}, 13'h08f4, "RW", "g_LDPC_DEC_EXPSYND_116.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_117, '{}, 13'h08f8, "RW", "g_LDPC_DEC_EXPSYND_117.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_118, '{}, 13'h08fc, "RW", "g_LDPC_DEC_EXPSYND_118.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_119, '{}, 13'h0900, "RW", "g_LDPC_DEC_EXPSYND_119.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_120, '{}, 13'h0904, "RW", "g_LDPC_DEC_EXPSYND_120.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_121, '{}, 13'h0908, "RW", "g_LDPC_DEC_EXPSYND_121.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_122, '{}, 13'h090c, "RW", "g_LDPC_DEC_EXPSYND_122.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_123, '{}, 13'h0910, "RW", "g_LDPC_DEC_EXPSYND_123.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_124, '{}, 13'h0914, "RW", "g_LDPC_DEC_EXPSYND_124.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_125, '{}, 13'h0918, "RW", "g_LDPC_DEC_EXPSYND_125.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_126, '{}, 13'h091c, "RW", "g_LDPC_DEC_EXPSYND_126.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_127, '{}, 13'h0920, "RW", "g_LDPC_DEC_EXPSYND_127.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_128, '{}, 13'h0924, "RW", "g_LDPC_DEC_EXPSYND_128.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_129, '{}, 13'h0928, "RW", "g_LDPC_DEC_EXPSYND_129.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_130, '{}, 13'h092c, "RW", "g_LDPC_DEC_EXPSYND_130.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_131, '{}, 13'h0930, "RW", "g_LDPC_DEC_EXPSYND_131.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_132, '{}, 13'h0934, "RW", "g_LDPC_DEC_EXPSYND_132.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_133, '{}, 13'h0938, "RW", "g_LDPC_DEC_EXPSYND_133.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_134, '{}, 13'h093c, "RW", "g_LDPC_DEC_EXPSYND_134.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_135, '{}, 13'h0940, "RW", "g_LDPC_DEC_EXPSYND_135.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_136, '{}, 13'h0944, "RW", "g_LDPC_DEC_EXPSYND_136.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_137, '{}, 13'h0948, "RW", "g_LDPC_DEC_EXPSYND_137.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_138, '{}, 13'h094c, "RW", "g_LDPC_DEC_EXPSYND_138.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_139, '{}, 13'h0950, "RW", "g_LDPC_DEC_EXPSYND_139.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_140, '{}, 13'h0954, "RW", "g_LDPC_DEC_EXPSYND_140.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_141, '{}, 13'h0958, "RW", "g_LDPC_DEC_EXPSYND_141.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_142, '{}, 13'h095c, "RW", "g_LDPC_DEC_EXPSYND_142.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_143, '{}, 13'h0960, "RW", "g_LDPC_DEC_EXPSYND_143.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_144, '{}, 13'h0964, "RW", "g_LDPC_DEC_EXPSYND_144.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_145, '{}, 13'h0968, "RW", "g_LDPC_DEC_EXPSYND_145.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_146, '{}, 13'h096c, "RW", "g_LDPC_DEC_EXPSYND_146.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_147, '{}, 13'h0970, "RW", "g_LDPC_DEC_EXPSYND_147.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_148, '{}, 13'h0974, "RW", "g_LDPC_DEC_EXPSYND_148.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_149, '{}, 13'h0978, "RW", "g_LDPC_DEC_EXPSYND_149.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_150, '{}, 13'h097c, "RW", "g_LDPC_DEC_EXPSYND_150.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_151, '{}, 13'h0980, "RW", "g_LDPC_DEC_EXPSYND_151.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_152, '{}, 13'h0984, "RW", "g_LDPC_DEC_EXPSYND_152.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_153, '{}, 13'h0988, "RW", "g_LDPC_DEC_EXPSYND_153.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_154, '{}, 13'h098c, "RW", "g_LDPC_DEC_EXPSYND_154.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_155, '{}, 13'h0990, "RW", "g_LDPC_DEC_EXPSYND_155.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_156, '{}, 13'h0994, "RW", "g_LDPC_DEC_EXPSYND_156.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_157, '{}, 13'h0998, "RW", "g_LDPC_DEC_EXPSYND_157.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_158, '{}, 13'h099c, "RW", "g_LDPC_DEC_EXPSYND_158.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_159, '{}, 13'h09a0, "RW", "g_LDPC_DEC_EXPSYND_159.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_160, '{}, 13'h09a4, "RW", "g_LDPC_DEC_EXPSYND_160.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_161, '{}, 13'h09a8, "RW", "g_LDPC_DEC_EXPSYND_161.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_162, '{}, 13'h09ac, "RW", "g_LDPC_DEC_EXPSYND_162.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_163, '{}, 13'h09b0, "RW", "g_LDPC_DEC_EXPSYND_163.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_164, '{}, 13'h09b4, "RW", "g_LDPC_DEC_EXPSYND_164.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_165, '{}, 13'h09b8, "RW", "g_LDPC_DEC_EXPSYND_165.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_166, '{}, 13'h09bc, "RW", "g_LDPC_DEC_EXPSYND_166.u_register")
      `rggen_ral_create_reg(LDPC_DEC_EXPSYND_167, '{}, 13'h09c0, "RW", "g_LDPC_DEC_EXPSYND_167.u_register")
      `rggen_ral_create_reg(LDPC_DEC_PROBABILITY, '{}, 13'h09c4, "RW", "g_LDPC_DEC_PROBABILITY.u_register")
      `rggen_ral_create_reg(LDPC_DEC_HamDist_loop_max, '{}, 13'h09c8, "RW", "g_LDPC_DEC_HamDist_loop_max.u_register")
      `rggen_ral_create_reg(LDPC_DEC_HamDist_loop_percentage, '{}, 13'h09cc, "RW", "g_LDPC_DEC_HamDist_loop_percentage.u_register")
      `rggen_ral_create_reg(LDPC_DEC_HamDist_iir1, '{}, 13'h09d0, "RW", "g_LDPC_DEC_HamDist_iir1.u_register")
      `rggen_ral_create_reg(LDPC_DEC_HamDist_iir2_NOT_USED, '{}, 13'h09d4, "RW", "g_LDPC_DEC_HamDist_iir2_NOT_USED.u_register")
      `rggen_ral_create_reg(LDPC_DEC_HamDist_iir3_NOT_USED, '{}, 13'h09d8, "RW", "g_LDPC_DEC_HamDist_iir3_NOT_USED.u_register")
      `rggen_ral_create_reg(LDPC_DEC_converged_valid, '{}, 13'h09dc, "RW", "g_LDPC_DEC_converged_valid.u_register")
      `rggen_ral_create_reg(LDPC_DEC_converged_status, '{}, 13'h09e0, "RW", "g_LDPC_DEC_converged_status.u_register")
      `rggen_ral_create_reg(LDPC_DEC_converged_valid_NOT_USED, '{}, 13'h09e4, "RW", "g_LDPC_DEC_converged_valid_NOT_USED.u_register")
      `rggen_ral_create_reg(LDPC_DEC_start, '{}, 13'h09e8, "RW", "g_LDPC_DEC_start.u_register")
      `rggen_ral_create_reg(LDPC_DEC_valid_NOT_USED, '{}, 13'h09ec, "RW", "g_LDPC_DEC_valid_NOT_USED.u_register")
      `rggen_ral_create_reg(LDPC_DEC_valid_codeword_NOT_USED, '{}, 13'h09f0, "RW", "g_LDPC_DEC_valid_codeword_NOT_USED.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_0, '{}, 13'h09f4, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_0.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_1, '{}, 13'h09f8, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_1.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_2, '{}, 13'h09fc, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_2.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_3, '{}, 13'h0a00, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_3.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_4, '{}, 13'h0a04, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_4.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_5, '{}, 13'h0a08, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_5.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_6, '{}, 13'h0a0c, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_6.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_7, '{}, 13'h0a10, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_7.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_8, '{}, 13'h0a14, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_8.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_9, '{}, 13'h0a18, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_9.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_10, '{}, 13'h0a1c, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_10.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_11, '{}, 13'h0a20, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_11.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_12, '{}, 13'h0a24, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_12.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_13, '{}, 13'h0a28, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_13.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_14, '{}, 13'h0a2c, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_14.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_15, '{}, 13'h0a30, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_15.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_16, '{}, 13'h0a34, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_16.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_17, '{}, 13'h0a38, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_17.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_18, '{}, 13'h0a3c, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_18.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_19, '{}, 13'h0a40, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_19.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_20, '{}, 13'h0a44, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_20.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_21, '{}, 13'h0a48, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_21.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_22, '{}, 13'h0a4c, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_22.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_23, '{}, 13'h0a50, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_23.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_24, '{}, 13'h0a54, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_24.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_25, '{}, 13'h0a58, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_25.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_26, '{}, 13'h0a5c, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_26.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_27, '{}, 13'h0a60, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_27.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_28, '{}, 13'h0a64, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_28.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_29, '{}, 13'h0a68, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_29.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_30, '{}, 13'h0a6c, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_30.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_31, '{}, 13'h0a70, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_31.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_32, '{}, 13'h0a74, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_32.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_33, '{}, 13'h0a78, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_33.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_34, '{}, 13'h0a7c, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_34.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_35, '{}, 13'h0a80, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_35.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_36, '{}, 13'h0a84, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_36.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_37, '{}, 13'h0a88, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_37.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_38, '{}, 13'h0a8c, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_38.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_39, '{}, 13'h0a90, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_39.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_40, '{}, 13'h0a94, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_40.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_41, '{}, 13'h0a98, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_41.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_42, '{}, 13'h0a9c, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_42.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_43, '{}, 13'h0aa0, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_43.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_44, '{}, 13'h0aa4, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_44.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_45, '{}, 13'h0aa8, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_45.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_46, '{}, 13'h0aac, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_46.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_47, '{}, 13'h0ab0, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_47.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_48, '{}, 13'h0ab4, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_48.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_49, '{}, 13'h0ab8, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_49.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_50, '{}, 13'h0abc, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_50.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_51, '{}, 13'h0ac0, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_51.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_52, '{}, 13'h0ac4, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_52.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_53, '{}, 13'h0ac8, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_53.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_54, '{}, 13'h0acc, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_54.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_55, '{}, 13'h0ad0, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_55.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_56, '{}, 13'h0ad4, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_56.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_57, '{}, 13'h0ad8, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_57.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_58, '{}, 13'h0adc, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_58.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_59, '{}, 13'h0ae0, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_59.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_60, '{}, 13'h0ae4, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_60.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_61, '{}, 13'h0ae8, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_61.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_62, '{}, 13'h0aec, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_62.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_63, '{}, 13'h0af0, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_63.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_64, '{}, 13'h0af4, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_64.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_65, '{}, 13'h0af8, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_65.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_66, '{}, 13'h0afc, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_66.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_67, '{}, 13'h0b00, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_67.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_68, '{}, 13'h0b04, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_68.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_69, '{}, 13'h0b08, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_69.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_70, '{}, 13'h0b0c, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_70.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_71, '{}, 13'h0b10, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_71.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_72, '{}, 13'h0b14, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_72.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_73, '{}, 13'h0b18, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_73.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_74, '{}, 13'h0b1c, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_74.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_75, '{}, 13'h0b20, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_75.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_76, '{}, 13'h0b24, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_76.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_77, '{}, 13'h0b28, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_77.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_78, '{}, 13'h0b2c, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_78.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_79, '{}, 13'h0b30, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_79.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_80, '{}, 13'h0b34, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_80.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_81, '{}, 13'h0b38, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_81.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_82, '{}, 13'h0b3c, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_82.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_83, '{}, 13'h0b40, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_83.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_84, '{}, 13'h0b44, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_84.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_85, '{}, 13'h0b48, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_85.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_86, '{}, 13'h0b4c, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_86.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_87, '{}, 13'h0b50, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_87.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_88, '{}, 13'h0b54, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_88.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_89, '{}, 13'h0b58, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_89.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_90, '{}, 13'h0b5c, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_90.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_91, '{}, 13'h0b60, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_91.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_92, '{}, 13'h0b64, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_92.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_93, '{}, 13'h0b68, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_93.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_94, '{}, 13'h0b6c, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_94.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_95, '{}, 13'h0b70, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_95.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_96, '{}, 13'h0b74, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_96.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_97, '{}, 13'h0b78, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_97.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_98, '{}, 13'h0b7c, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_98.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_99, '{}, 13'h0b80, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_99.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_100, '{}, 13'h0b84, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_100.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_101, '{}, 13'h0b88, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_101.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_102, '{}, 13'h0b8c, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_102.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_103, '{}, 13'h0b90, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_103.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_104, '{}, 13'h0b94, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_104.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_105, '{}, 13'h0b98, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_105.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_106, '{}, 13'h0b9c, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_106.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_107, '{}, 13'h0ba0, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_107.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_108, '{}, 13'h0ba4, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_108.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_109, '{}, 13'h0ba8, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_109.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_110, '{}, 13'h0bac, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_110.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_111, '{}, 13'h0bb0, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_111.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_112, '{}, 13'h0bb4, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_112.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_113, '{}, 13'h0bb8, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_113.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_114, '{}, 13'h0bbc, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_114.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_115, '{}, 13'h0bc0, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_115.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_116, '{}, 13'h0bc4, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_116.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_117, '{}, 13'h0bc8, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_117.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_118, '{}, 13'h0bcc, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_118.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_119, '{}, 13'h0bd0, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_119.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_120, '{}, 13'h0bd4, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_120.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_121, '{}, 13'h0bd8, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_121.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_122, '{}, 13'h0bdc, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_122.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_123, '{}, 13'h0be0, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_123.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_124, '{}, 13'h0be4, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_124.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_125, '{}, 13'h0be8, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_125.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_126, '{}, 13'h0bec, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_126.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_127, '{}, 13'h0bf0, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_127.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_128, '{}, 13'h0bf4, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_128.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_129, '{}, 13'h0bf8, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_129.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_130, '{}, 13'h0bfc, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_130.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_131, '{}, 13'h0c00, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_131.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_132, '{}, 13'h0c04, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_132.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_133, '{}, 13'h0c08, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_133.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_134, '{}, 13'h0c0c, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_134.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_135, '{}, 13'h0c10, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_135.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_136, '{}, 13'h0c14, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_136.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_137, '{}, 13'h0c18, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_137.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_138, '{}, 13'h0c1c, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_138.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_139, '{}, 13'h0c20, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_139.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_140, '{}, 13'h0c24, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_140.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_141, '{}, 13'h0c28, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_141.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_142, '{}, 13'h0c2c, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_142.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_143, '{}, 13'h0c30, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_143.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_144, '{}, 13'h0c34, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_144.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_145, '{}, 13'h0c38, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_145.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_146, '{}, 13'h0c3c, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_146.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_147, '{}, 13'h0c40, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_147.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_148, '{}, 13'h0c44, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_148.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_149, '{}, 13'h0c48, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_149.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_150, '{}, 13'h0c4c, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_150.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_151, '{}, 13'h0c50, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_151.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_152, '{}, 13'h0c54, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_152.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_153, '{}, 13'h0c58, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_153.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_154, '{}, 13'h0c5c, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_154.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_155, '{}, 13'h0c60, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_155.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_156, '{}, 13'h0c64, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_156.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_157, '{}, 13'h0c68, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_157.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_158, '{}, 13'h0c6c, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_158.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_159, '{}, 13'h0c70, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_159.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_160, '{}, 13'h0c74, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_160.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_161, '{}, 13'h0c78, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_161.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_162, '{}, 13'h0c7c, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_162.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_163, '{}, 13'h0c80, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_163.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_164, '{}, 13'h0c84, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_164.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_165, '{}, 13'h0c88, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_165.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_166, '{}, 13'h0c8c, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_166.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_167, '{}, 13'h0c90, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_167.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_168, '{}, 13'h0c94, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_168.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_169, '{}, 13'h0c98, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_169.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_170, '{}, 13'h0c9c, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_170.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_171, '{}, 13'h0ca0, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_171.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_172, '{}, 13'h0ca4, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_172.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_173, '{}, 13'h0ca8, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_173.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_174, '{}, 13'h0cac, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_174.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_175, '{}, 13'h0cb0, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_175.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_176, '{}, 13'h0cb4, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_176.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_177, '{}, 13'h0cb8, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_177.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_178, '{}, 13'h0cbc, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_178.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_179, '{}, 13'h0cc0, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_179.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_180, '{}, 13'h0cc4, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_180.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_181, '{}, 13'h0cc8, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_181.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_182, '{}, 13'h0ccc, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_182.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_183, '{}, 13'h0cd0, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_183.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_184, '{}, 13'h0cd4, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_184.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_185, '{}, 13'h0cd8, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_185.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_186, '{}, 13'h0cdc, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_186.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_187, '{}, 13'h0ce0, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_187.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_188, '{}, 13'h0ce4, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_188.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_189, '{}, 13'h0ce8, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_189.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_190, '{}, 13'h0cec, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_190.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_191, '{}, 13'h0cf0, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_191.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_192, '{}, 13'h0cf4, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_192.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_193, '{}, 13'h0cf8, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_193.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_194, '{}, 13'h0cfc, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_194.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_195, '{}, 13'h0d00, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_195.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_196, '{}, 13'h0d04, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_196.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_197, '{}, 13'h0d08, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_197.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_198, '{}, 13'h0d0c, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_198.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_199, '{}, 13'h0d10, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_199.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_200, '{}, 13'h0d14, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_200.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_201, '{}, 13'h0d18, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_201.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_202, '{}, 13'h0d1c, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_202.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_203, '{}, 13'h0d20, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_203.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_204, '{}, 13'h0d24, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_204.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_205, '{}, 13'h0d28, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_205.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_206, '{}, 13'h0d2c, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_206.u_register")
      `rggen_ral_create_reg(LDPC_DEC_CODEWRD_OUT_BIT_207, '{}, 13'h0d30, "RW", "g_LDPC_DEC_CODEWRD_OUT_BIT_207.u_register")
    endfunction
  endclass
endpackage
