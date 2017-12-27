package bean;

/**
 * Created by Huazi on 2017/10/17.
 */
public class CegWatchOrder {
    private int id;
    private String user_name;
    private int watch_id;
    private double total_price;
    private int order_status;
    private CegOrderDetail cegOrderDetail;

    public CegOrderDetail getCegOrderDetail() {
        return cegOrderDetail;
    }

    public void setCegOrderDetail(CegOrderDetail cegOrderDetail) {
        this.cegOrderDetail = cegOrderDetail;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public int getWatch_id() {
        return watch_id;
    }

    public void setWatch_id(int watch_id) {
        this.watch_id = watch_id;
    }

    public double getTotal_price() {
        return total_price;
    }

    public void setTotal_price(double total_price) {
        this.total_price = total_price;
    }

    public int getOrder_status() {
        return order_status;
    }

    public void setOrder_status(int order_status) {
        this.order_status = order_status;
    }
}
