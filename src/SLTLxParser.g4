parser grammar SLTLxParser;

options { tokenVocab=SLTLxLexer; }

compilationUnit : condition;

condition
   :formula (ENDLINE formula)* ENDLINE* EOF
   ;
   
formula
   : TRUE										# true
   | LPAREN formula RPAREN						# brackets
   | LTHAN module GTHAN formula						# toolRef
   | CONSTANT LPAREN VARIABLE RPAREN					# function
   | VARIABLE EQUAL VARIABLE					# varEq
   | NOT formula 								# negUnary
   | FORALL LPAREN VARIABLE RPAREN formula 		# forall
   | EXISTS LPAREN VARIABLE RPAREN formula		# exists
   | UN_MODAL formula							# unaryModal
   | formula BIN_CONNECTIVE formula 			# binaryBool
   
   | formula BIN_MODAL formula					# binaryModal
   | R_REL LPAREN VARIABLE COMMA VARIABLE RPAREN	# r_relation
   ;
   
   module
   : CONSTANT LPAREN vars SEMICOL vars RPAREN 
   ;

vars
   : (VARIABLE ( COMMA VARIABLE )*)?
   ;
   
   
   
