
# MAKE file for ImageBtn.Mak     Version  1.0

# Revised:  1992-12-02

CC=Wcl386
RC=Rc
C_SW=-ms -3s -bd -s -ox -zp4 -w3 -c
RC_SW=-r

ImageBtn.Exe: ImageBtn.Obj ImageBtn.Res
 WLink @ImageBtn.Lnk;

ImageBtn.Obj: ImageBtn.C
 $(CC) $(C_SW) -fo=$*.Obj ImageBtn.C

ImageBtn.Res: ImageBtn.Rc Default.Bmp Disabled.Bmp Down.Bmp
 $(RC) $(RC_SW) ImageBtn.Rc $*.Res

