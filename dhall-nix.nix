{ mkDerivation, base, containers, data-fix, dhall, hnix
, neat-interpolation, optparse-generic, stdenv, text
}:
mkDerivation {
  pname = "dhall-nix";
  version = "1.1.6";
  src = ./..;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    base containers data-fix dhall hnix neat-interpolation text
  ];
  executableHaskellDepends = [
    base dhall hnix optparse-generic text
  ];
  description = "Dhall to Nix compiler";
  license = stdenv.lib.licenses.bsd3;
}
