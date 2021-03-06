package business.services;

public class SVG {
    StringBuilder svg = new StringBuilder();
    private int x;
    private int y;
    private String canvas;
    private int width;
    private int height;

    private final String headerTemplate = "<svg height=\"%d%%\" " +
            "width=\"%d%%\" " +
            "viewbox=\"%s\" " +
            "x=\"%d\"  "+
            "y=\"%d\"  "+
            "preserveAspectRatio=\"xMinYMin\">";

    private final String rectTemplate = "<rect x=\"%d\" y=\"%d\" height=\"%f\" width=\"%f\" style=\"stroke:#000000; fill: #ffffff\" />";
    private final String lineTemplate = "<line x1=\"%d\" y1=\"%d\" x2=\"%f\" y2=\"%f\" style=\"stroke:#000000; stroke-dasharray: 5 5;\" />";

    public SVG(int x, int y, String canvas, int width, int height) {
        this.x = x;
        this.y = y;
        this.canvas = canvas;
        this.width = width;
        this.height = height;
        svg.append(String.format(headerTemplate, height, width, canvas, x, y));
    }

    public void addRect(int x, int y, int height, int width) {
        svg.append(String.format(rectTemplate, x, y, height, width));
    }

    public void addLine(int x1, int y1, int x2, int y2 ) {
        svg.append(String.format(lineTemplate, x1, y1, x2, y2));
    }

    public void addSvg(SVG innerSVG) {
        svg.append(innerSVG.toString());
    }

    @Override
    public String toString() {
        return svg.toString() + "</svg>";
    }
}
