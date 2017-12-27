package bean;

/**
 * Created by Huazi on 2017/10/18.
 */
public class CegOrderDetail {
    private int id;
    private String order_id;
    private String watch_name;
    private double watch_price;
    private int watch_count;
    private String watch_color;
    private String watch_url;

    public String getWatch_url() {
        return watch_url;
    }

    public void setWatch_url(String watch_url) {
        this.watch_url = watch_url;
    }

    public String getWatch_color() {
        return watch_color;
    }

    public void setWatch_color(String watch_color) {
        this.watch_color = watch_color;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getOrder_id() {
        return order_id;
    }

    public void setOrder_id(String order_id) {
        this.order_id = order_id;
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
}
