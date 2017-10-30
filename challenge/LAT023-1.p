%--------------------------------------------------------------------------
% File     : LAT023-1 : TPTP v7.0.0. Released v2.2.0.
% Domain   : Lattice Theory (Quasilattices)
% Problem  : Yet another modularity equation for quasilattices.
% Version  : [MP96] (equality) axioms.
% English  :

% Refs     : [McC98] McCune (1998), Email to G. Sutcliffe
%          : [MP96]  McCune & Padmanabhan (1996), Automated Deduction in Eq
% Source   : [McC98]
% Names    : QLT-6 [MP96]

% Status   : Unsatisfiable
% Rating   : 0.33 v7.0.0, 0.37 v6.4.0, 0.47 v6.3.0, 0.41 v6.2.0, 0.43 v6.1.0, 0.44 v6.0.0, 0.52 v5.5.0, 0.53 v5.4.0, 0.47 v5.3.0, 0.42 v5.2.0, 0.43 v5.1.0, 0.40 v5.0.0, 0.43 v4.1.0, 0.36 v4.0.1, 0.43 v4.0.0, 0.38 v3.7.0, 0.00 v3.4.0, 0.12 v3.3.0, 0.21 v3.1.0, 0.22 v2.7.0, 0.09 v2.6.0, 0.00 v2.5.0, 0.25 v2.4.0, 0.33 v2.3.0, 0.67 v2.2.1
% Syntax   : Number of clauses     :   10 (   0 non-Horn;  10 unit;   1 RR)
%            Number of atoms       :   10 (  10 equality)
%            Maximal clause size   :    1 (   1 average)
%            Number of predicates  :    1 (   0 propositional; 2-2 arity)
%            Number of functors    :    5 (   3 constant; 0-2 arity)
%            Number of variables   :   21 (   0 singleton)
%            Maximal term depth    :    4 (   3 average)
% SPC      : CNF_UNS_RFO_PEQ_UEQ

% Comments :
%--------------------------------------------------------------------------
%----Include Quasilattice theory (equality) axioms
include('./LAT004-0.ax').
%--------------------------------------------------------------------------
%----Yet another modularity axoim:
cnf(modularity_axiom,hypothesis,
    ( join(meet(join(X,Y),Z),Y) = join(meet(join(Z,Y),X),Y) )).

%----Denial of ordinary equational modularity:
cnf(prove_modularity,negated_conjecture,
    (  meet(a,join(b,meet(a,c))) != join(meet(a,b),meet(a,c)) )).

%--------------------------------------------------------------------------