#!/bin/bash
mkdir watchdog/src
mkdir admin/src
mkdir discord/src
mkdir nginx/src
git clone https://github.com/space-wizards/SS14.Watchdog.git watchdog/src
git clone --recurse-submodules https://github.com/space-wizards/SS14.Admin.git admin/src
git clone https://github.com/mythical-dimensions/dss.git discord/src
git clone https://github.com/mythical-dimensions/www.git nginx/src
