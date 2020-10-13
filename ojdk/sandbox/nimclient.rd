# Playbook to implement nimclient command - bos_inst -
# collections.aixtools.nimclient:
  type: bos_inst
  source: {mksysb:rte:xxx}
  spot: spot_name
  lpp: lpp_source_name # optional
  mksysb: mksysb_name # optional
  fb_script: fb_name # optional
  resolv: resolv_conf_name # optional
  accept: accept_licenses # yes,no default no (no same as missing)
  bundle: installp_bundle #default null
  filesets: filesets_list, #default null
  # flags: installp_flags # optional, default cNgX
  # no_nim_client
  # setbootlist
  # preserve_res

  ---
  - hosts: wip

    tasks:
      name: Reinstall node using NIMCLIENT
      command: >
        nimclient -o bos_inst -a source=mksysb -a spot=710404 -a lpp_source=710404_lpp -a mksysb=7104_04_gold \
        -a bosinst_data=720bid_ow -a resolv_conf=resolv_osu -a script=minimal_71 -a fb_script=fb_ojdk \
        -a installp_bundle=ojdk_bnd -a installp_flags=cNgXY -a accept_licenses=yes

## Draft command:
## nimclient -o bos_inst -a source=mksysb -a spot=710404 -a lpp_source=710404_lpp \
    -a mksysb=7104_04_gold  -a bosinst_data=720bid_ow -a resolv_conf=resolv_osu \
    -a script=minimal_71 -a fb_script=fb_ojdk -a installp_bundle=ojdk_bnd \
    -a installp_flags=cNgXY -a accept_licenses=yes

## Draft command:
## nimclient -o bos_inst -a source=mksysb -a spot=710404 -a lpp_source=710404_lpp \
    -a mksysb=7104_04_gold  -a bosinst_data=720bid_ow -a resolv_conf=resolv_osu \
    -a fb_script=fb_ojdk -a installp_bundle=ojdk_bnd \
    -a installp_flags=cNgXY -a accept_licenses=yes
