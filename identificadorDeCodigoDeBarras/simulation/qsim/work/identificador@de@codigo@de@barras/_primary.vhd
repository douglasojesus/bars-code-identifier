library verilog;
use verilog.vl_types.all;
entity identificadorDeCodigoDeBarras is
    port(
        E7              : in     vl_logic;
        E6              : in     vl_logic;
        E5              : in     vl_logic;
        E4              : in     vl_logic;
        E3              : in     vl_logic;
        E2              : in     vl_logic;
        E1              : in     vl_logic;
        E0              : in     vl_logic;
        g               : out    vl_logic;
        f               : out    vl_logic;
        e               : out    vl_logic;
        d               : out    vl_logic;
        c               : out    vl_logic;
        b               : out    vl_logic;
        a               : out    vl_logic;
        dig             : out    vl_logic;
        ledR            : out    vl_logic;
        ledG            : out    vl_logic;
        L0              : out    vl_logic;
        L1              : out    vl_logic;
        L2              : out    vl_logic;
        L3              : out    vl_logic;
        L4              : out    vl_logic;
        L5              : out    vl_logic;
        L6              : out    vl_logic;
        C0              : out    vl_logic;
        C1              : out    vl_logic;
        C2              : out    vl_logic;
        C3              : out    vl_logic;
        C4              : out    vl_logic
    );
end identificadorDeCodigoDeBarras;
