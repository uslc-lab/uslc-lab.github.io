module Jekyll
  class BibLoader < Generator
    def generate(site)
      if site.config['scholar']
        bibfile = site.config['scholar']['bibliography']
        path = File.join(site.source, site.config['scholar']['source'], bibfile)

        require 'bibtex'
        bib = BibTeX.open(path)

        site.data['bibliography'] = bib.map do |entry|
          hash = {}

          entry.fields.each do |key, value|
            clean = value.to_s
            .gsub(/[{}]/, '')          # remove braces
            .gsub(/\\["'`^~=.]/, '')   # remove LaTeX accents
            .gsub(/\\textit\{(.+?)\}/, '\1')
            .gsub(/\\&/, '&')

            # turn comma fields into arrays
            if key.to_s == "grant"
              hash[key.to_s] = clean.split(',').map(&:strip)
            else
              hash[key.to_s] = clean
            end
          end

          hash["bibtex_key"] = entry.key.to_s
          hash["bibtex_type"] = entry.type.to_s

          hash
        end
      end
    end
  end
end