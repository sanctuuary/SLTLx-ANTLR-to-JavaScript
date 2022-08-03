lexer grammar SLTLxLexer;



BIN_CONNECTIVE
   : AND
   | OR
   | IMPL
   | EQUIVALENT
   ;
 
UN_MODAL
   : SLTL_GLOBALLY
   | SLTL_FINALLY
   | SLTL_NEXT
   ;
  
BIN_MODAL
   : SLTL_UNTIL
   ;

  
TRUE
   : 'true'
   ;

LPAREN
   :'('
   ;
RPAREN
   :')'
   ;
   
LTHAN
   :'<'
   ;
GTHAN
   :'>'
   ;
   
VARIABLE
   : '?'  ('0' .. '9' | 'a' .. 'z' | 'A' .. 'Z' | '_')+
   ;

CONSTANT
   : '\''  ('0' .. '9' | 'a' .. 'z' | 'A' .. 'Z' | '_')+ '\''
   ;
   
R_REL
   : 'R'
   ;

SLTL_UNTIL
   : 'U'
   ;

SLTL_GLOBALLY
   : 'G'
   ;

SLTL_FINALLY
   : 'F'
   ;

SLTL_NEXT
   : 'X'
   ;

OR
   :'|'
   ;
AND
   :'&'
   ;
IMPL
   :'->'
   ;
EQUIVALENT
   :'<->'
   ;
EQUAL
   :'='
   ;
NOT
   :'!'
   ;

EXISTS
   :'Exists'
   ;
 
FORALL
   :'Forall'
   ;
   

COMMA
   :','
   ;
SEMICOL
   :';'
   ;
ENDLINE
   :('\r'|'\n')+
   ;
WHITESPACE
   :(' '|'\t')+->skip
   ;
