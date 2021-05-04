{
  description = "A collection of flake templates";

  outputs = { self }: {

    templates = {

      trivial = {
        path = ./trivial;
        description = "A very basic flake";
      };

      devshell = {
        path = ./devshell;
        description = "A very basic flake with a devshell";
      };

      simpleContainer = {
        path = ./simple-container;
        description = "A NixOS container running apache-httpd";
      };

    };

    defaultTemplate = self.templates.devshell;

  };
}
