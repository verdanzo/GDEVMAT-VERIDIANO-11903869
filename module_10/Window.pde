
public static class Window
{
    public static int widthPx = 1280;
    public static int heightPx = 720;
    public static int w = widthPx/2;
    public static int h = heightPx/2;
    public static int top = h;
    public static int bottom = -h;
    public static int left = -w;
    public static int right = w;
    public static float eyeZ = -(heightPx/2.0) / tan(PI*30.0 / 180.0);
}
