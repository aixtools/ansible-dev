  LPP_SOURCE=710404_lpp
  FILESETS="bos"
  FILESETS="bash,libiconv,bos"
  OPFLAGS="installp_cmd ${INCLUDE_LANGS} -f $FILESETS -L -l"
# Notice the double quotes - surronding $OPFLAGS !!
  /usr/sbin/nimclient -o showres -a sm_inst_flags="$OPFLAGS" -a resource=$LPP_SOURCE

# LPP_SOURCE=710404_lpp
# INSTALLP="-a sm_inst_flags="installp_cmd -f aixtools -L -l"
# /usr/sbin/nimclient -o showres -a sm_inst_flags="installp_cmd -f aixtools -L -l" -a resource=710404_lpp
