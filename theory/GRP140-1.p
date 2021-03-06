%--------------------------------------------------------------------------
% File     : GRP140-1 : TPTP v6.3.0. Bugfixed v1.2.1.
% Domain   : Group Theory (Lattice Ordered)
% Problem  : Prove greatest lower-bound axiom using a transformation
% Version  : [Fuc94] (equality) axioms.
% English  : This problem proves the original greatest lower-bound axiom
%            from the equational axiomatization.

% Refs     : [Fuc94] Fuchs (1994), The Application of Goal-Orientated Heuri
%          : [Sch95] Schulz (1995), Explanation Based Learning for Distribu
% Source   : [Sch95]
% Names    : ax_glb1c [Sch95]

% Status   : Unsatisfiable
% Rating   : 0.05 v6.3.0, 0.12 v6.2.0, 0.14 v6.1.0, 0.06 v6.0.0, 0.14 v5.5.0, 0.11 v5.4.0, 0.00 v5.1.0, 0.13 v5.0.0, 0.14 v4.1.0, 0.18 v4.0.1, 0.14 v4.0.0, 0.08 v3.7.0, 0.00 v3.4.0, 0.12 v3.3.0, 0.00 v2.1.0, 0.43 v2.0.0
% Syntax   : Number of clauses     :   18 (   0 non-Horn;  18 unit;   3 RR)
%            Number of atoms       :   18 (  18 equality)
%            Maximal clause size   :    1 (   1 average)
%            Number of predicates  :    1 (   0 propositional; 2-2 arity)
%            Number of functors    :    8 (   4 constant; 0-2 arity)
%            Number of variables   :   33 (   2 singleton)
%            Maximal term depth    :    3 (   2 average)
% SPC      : CNF_UNS_RFO_PEQ_UEQ

% Comments : ORDERING LPO inverse > product > greatest_lower_bound >
%            least_upper_bound > identity > a > b > c
%          : ORDERING LPO greatest_lower_bound > least_upper_bound >
%            inverse > product > identity > a > b > c
% Bugfixes : v1.2.1 - Duplicate axioms in GRP004-2.ax removed.
%--------------------------------------------------------------------------
%----Include equality group theory axioms
include('./GRP004-0.ax').
%----Include Lattice ordered group (equality) axioms
include('./GRP004-2.ax').
%--------------------------------------------------------------------------
cnf(ax_glb1c_1,hypothesis,
    ( greatest_lower_bound(a,c) = c )).

cnf(ax_glb1c_2,hypothesis,
    ( greatest_lower_bound(b,c) = c )).

cnf(prove_ax_glb1c,negated_conjecture,
    (  least_upper_bound(greatest_lower_bound(a,b),c) != greatest_lower_bound(a,b) )).

%--------------------------------------------------------------------------
