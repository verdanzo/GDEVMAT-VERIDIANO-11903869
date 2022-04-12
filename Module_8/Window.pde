public static class Window
{
    public static int windowWidth = 1280;
    public static int windowHeight = 720;
    public static int w = windowWidth/2;
    public static int h = windowHeight/2;
    public static int top = h;
    public static int bottom = -h;
    public static int left = -w;
    public static int right = w;
    public static float eyeZ = -(windowHeight/2.0) / tan(PI*30.0 / 180.0);
}
