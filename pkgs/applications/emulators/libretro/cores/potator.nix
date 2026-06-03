{
  lib,
  fetchFromGitHub,
  mkLibretroCore,
}:
mkLibretroCore {
  core = "potator";
  version = "0-unstable-2026-04-20";

  src = fetchFromGitHub {
    owner = "libretro";
    repo = "potator";
    rev = "369abd1f8bd9cb8f256f00d2e70f13e7bf1da291";
    hash = "sha256-+hcv83Xem/SgH3BGVgcEvclXUsTSEnGwbevHUf6XRRc=";
  };

  makefile = "Makefile";
  preBuild = "cd platform/libretro";

  meta = {
    description = "A Watara Supervision Emulator based on Normmatt version";
    homepage = "https://github.com/libretro/potator";
    license = lib.licenses.unlicense;
  };
}
