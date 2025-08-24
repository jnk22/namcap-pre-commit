FROM archlinux:base

RUN pacman -Sy --noconfirm --noprogressbar \
    && pacman -S --noconfirm --needed namcap \
    && pacman -Scc --noconfirm

COPY --chmod=755 namcap-wrapper /usr/local/bin/namcap-wrapper
