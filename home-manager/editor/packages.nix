{pkgs, ...}: {
  home.packages = with pkgs;[

    #-- nix
    nil
    alejandra

    #-- golang
    go
    gotools
    gopls # basic lsp
    golangci-lint-langserver # lint lsp
    delve # debugger    
    golangci-lint

    #-- c/c++
    cmake
    cmake-language-server
    gnumake
    checkmake
    # c/c++ compiler, required by nvim-treesitter!
    gcc
    # c/c++ tools with clang-tools, the unwrapped version won't
    # add alias like `cc` and `c++`, so that it won't conflict with gcc
    # llvmPackages.clang-unwrapped
    clang-tools
    lldb
  ];  
}
