{
  perSystem = { pkgs, ... }: {
    packages.libmonome = pkgs.pkgsCross.raspberryPi.libmonome;
  };
}
