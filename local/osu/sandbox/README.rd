# Sandbox - local directory for try-outs

- ansible.cfg # has defaults added for AIX

- inventory.{osu|ojdk|nodejs|local}
  # Depending on what directory work is being done an invenrotyu file will be specified.
  # A key element of the inventory is the variables for the PKI authentofication
  # While different keys may be present, in my case I am making hard links
  # ln id_rsa id_osu; ln id_rsa.pub id_osu.pub
  # Doing this so that anyone working on this repository can have their personal keys
  # but use an 'alias' so that the inventory files can be part of the repository
  # rather than ignored files.

- to get rid of the message:
"/opt/lib/python3.6/site-packages/cryptography/hazmat/bindings/openssl/binding.py:177: CryptographyDeprecationWarning: OpenSSL version 1.0.2 is no longer supported by the OpenSSL project, please upgrade. The next version of cryptography will drop support for it.
  utils.CryptographyDeprecationWarning,"

add to ~/.profile:
export PYTHONWARNINGS=ignore # optional
