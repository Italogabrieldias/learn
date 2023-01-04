package com.project.learn.learn.pk;

import com.project.learn.learn.entities.Offer;
import com.project.learn.learn.entities.User;

import javax.persistence.Embeddable;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class EnrollmentPK implements Serializable {

    @ManyToOne
    @JoinColumn(name = "user_id")
    private Offer offer;
    @ManyToOne
    @JoinColumn(name = "offer_id")
    private User user;

    public EnrollmentPK(){

    }

    public EnrollmentPK(Offer offer, User user) {
        this.offer = offer;
        this.user = user;
    }

    public Offer getOffer() {
        return offer;
    }

    public void setOffer(Offer offer) {
        this.offer = offer;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof EnrollmentPK that)) return false;
        return getOffer().equals(that.getOffer()) && getUser().equals(that.getUser());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getOffer(), getUser());
    }
}
