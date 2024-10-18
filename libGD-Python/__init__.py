from .cert import Credentials

class GDInstance:
  def __init__(self, **kwags, cert=Cerdentials):
    argcert = kwargs
    argcert['savefile-paths'] = cert.getsfpaths()
    argcert['permitions-api'] - cert.getperm()

    self.config: dict = argcert
