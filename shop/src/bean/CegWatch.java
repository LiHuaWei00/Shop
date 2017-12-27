package bean;

/**
 * Created by Huazi on 2017/10/12.
 */
public class CegWatch {
    private int id;
    private String watch_name;
    private double watch_price;
    private int watch_count;
    private String watch_url;
    private String watch_size;
    private String watch_color;
    private CegWatchType watch_type;
    private CegWatchPeo watch_peo;
    private String watch_introduce;
    private CegWatchColor watchColor;
    private CegWatchSize watchSize;

    public CegWatchColor getWatchColor() {
        return watchColor;
    }

    public void setWatchColor(CegWatchColor watchColor) {
        this.watchColor = watchColor;
    }

    public CegWatchSize getWatchSize() {
        return watchSize;
    }

    public void setWatchSize(CegWatchSize watchSize) {
        this.watchSize = watchSize;
    }

    public String getWatch_introduce() {
        return watch_introduce;
    }

    public void setWatch_introduce(String watch_introduce) {
        this.watch_introduce = watch_introduce;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getWatch_name() {
        return watch_name;
    }

    public void setWatch_name(String watch_name) {
        this.watch_name = watch_name;
    }

    public double getWatch_price() {
        return watch_price;
    }

    public void setWatch_price(double watch_price) {
        this.watch_price = watch_price;
    }

    public int getWatch_count() {
        return watch_count;
    }

    public void setWatch_count(int watch_count) {
        this.watch_count = watch_count;
    }

    public String getWatch_url() {
        return watch_url;
    }

    public void setWatch_url(String watch_url) {
        this.watch_url = watch_url;
    }

    public String getWatch_size() {
        return watch_size;
    }

    public void setWatch_size(String watch_size) {
        this.watch_size = watch_size;
    }

    public String getWatch_color() {
        return watch_color;
    }

    public void setWatch_color(String watch_color) {
        this.watch_color = watch_color;
    }

    public CegWatchType getWatch_type() {
        return watch_type;
    }

    public void setWatch_type(CegWatchType watch_type) {
        this.watch_type = watch_type;
    }

    public CegWatchPeo getWatch_peo() {
        return watch_peo;
    }

    public void setWatch_peo(CegWatchPeo watch_peo) {
        this.watch_peo = watch_peo;
    }
}
