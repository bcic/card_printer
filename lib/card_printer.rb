require "card_printer/version"
require "card_printer/six_by_four_renderer"
require "card_printer/a6_renderer"
require "card_printer/renderer"

module CardPrinter
  LAYOUTS = {
    "6x4" => CardPrinter::SixByFourRenderer,
    "a6" => CardPrinter::A6Renderer,
    "a5" => CardPrinter::Renderer
  }

  def self.render(stories, destination_path, renderer_name = '6x4', opts = {})
    LAYOUTS[renderer_name].new(stories, opts).render_to(destination_path)
  end
end
