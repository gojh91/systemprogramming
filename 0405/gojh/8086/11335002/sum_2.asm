CODE SEGMENT
ASSUME CS:CODE, DS:CODE
MOV AX,CS ; DS����
MOV DS,AX
;
MOV CX,100 ; CX�� 100�� ����
MOV AX,0 ; AX �� 0�� ����
NEXT: ADD AX,CX
SUB CX,1
CMP CX,0; CX�� ������ 0�ΰ� ��
JNE NEXT;0�̸� ������ �ƴϸ� NEXT ��� �󺧷� �̵�
MOV TOTAL,AX
MOV AH,4CH ;������ MS-DOS�� ���ư���.
INT 21H
;
TOTAL DW ?
CODE ENDS
END