------------------------------------------------------------
-- Deeds (Digital Electronics Education and Design Suite)
-- VHDL Code generated on (9/24/2025, 7:01:33 PM)
--      by Deeds (Digital Circuit Simulator)(Deeds-DcS)
--      Ver. 3.01.250 (Feb 28, 2025)
-- Copyright (c) 2002-2025 University of Genoa, Italy
--      Web Site:  https://www.digitalelectronicsdeeds.com
------------------------------------------------------------

--------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

ENTITY NOT_gate IS
  PORT( I: IN std_logic;
  	O: OUT std_logic );
END NOT_gate;

--------------------------------------------------------------------
ARCHITECTURE behavioral OF NOT_gate IS
BEGIN
  O <= (not I);
END behavioral;



--------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

ENTITY AND2_gate IS
  PORT( I0,I1: IN std_logic;
        O: OUT std_logic );
END AND2_gate;

--------------------------------------------------------------------
ARCHITECTURE behavioral OF AND2_gate IS
BEGIN
  O <= (I0 and I1);
END behavioral;


--------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

ENTITY AND3_gate IS
  PORT( I0,I1,I2: IN std_logic;
        O: OUT std_logic );
END AND3_gate;

--------------------------------------------------------------------
ARCHITECTURE behavioral OF AND3_gate IS
BEGIN
  O <= (I0 and I1 and I2);
END behavioral;


--------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

ENTITY OR2_gate IS
  PORT( I0,I1: IN std_logic;
        O: OUT std_logic );
END OR2_gate;

--------------------------------------------------------------------
ARCHITECTURE behavioral OF OR2_gate IS
BEGIN
  O <= (I0 or I1);
END behavioral;


--------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

ENTITY OR3_gate IS
  PORT( I0,I1,I2: IN std_logic;
        O: OUT std_logic );
END OR3_gate;

--------------------------------------------------------------------
ARCHITECTURE behavioral OF OR3_gate IS
BEGIN
  O <= (I0 or I1 or I2);
END behavioral;


--------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

ENTITY OR4_gate IS
  PORT( I0,I1,I2,I3: IN std_logic;
        O: OUT std_logic );
END OR4_gate;

--------------------------------------------------------------------
ARCHITECTURE behavioral OF OR4_gate IS
BEGIN
  O <= (I0 or I1 or I2 or I3);
END behavioral;


--------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

ENTITY OR5_gate IS
  PORT( I0,I1,I2,I3,I4: IN std_logic;
        O: OUT std_logic );
END OR5_gate;

--------------------------------------------------------------------
ARCHITECTURE behavioral OF OR5_gate IS
BEGIN
  O <= (I0 or I1 or I2 or I3 or I4);
END behavioral;


--------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

ENTITY NOR2_gate IS
  PORT( I0,I1: IN std_logic;
        O: OUT std_logic );
END NOR2_gate;

--------------------------------------------------------------------
ARCHITECTURE behavioral OF NOR2_gate IS
BEGIN
  O <= (not (I0 or I1));
END behavioral;


--------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

ENTITY NOR3_gate IS
  PORT( I0,I1,I2: IN std_logic;
        O: OUT std_logic );
END NOR3_gate;

--------------------------------------------------------------------
ARCHITECTURE behavioral OF NOR3_gate IS
BEGIN
  O <= (not (I0 or I1 or I2));
END behavioral;


--------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

ENTITY NOR4_gate IS
  PORT( I0,I1,I2,I3: IN std_logic;
        O: OUT std_logic );
END NOR4_gate;

--------------------------------------------------------------------
ARCHITECTURE behavioral OF NOR4_gate IS
BEGIN
  O <= (not (I0 or I1 or I2 or I3));
END behavioral;



