// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package nl.bzk.brp.model.data.kern;

import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import nl.bzk.brp.model.data.kern.Actie;
import nl.bzk.brp.model.data.kern.Adellijketitel;
import nl.bzk.brp.model.data.kern.HisPerssamengesteldenaam;
import nl.bzk.brp.model.data.kern.Pers;
import nl.bzk.brp.model.data.kern.Predikaat;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect HisPerssamengesteldenaam_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "actieaanpgel", referencedColumnName = "id")
    private Actie HisPerssamengesteldenaam.actieaanpgel;
    
    @ManyToOne
    @JoinColumn(name = "actieinh", referencedColumnName = "id")
    private Actie HisPerssamengesteldenaam.actieinh;
    
    @ManyToOne
    @JoinColumn(name = "actieverval", referencedColumnName = "id")
    private Actie HisPerssamengesteldenaam.actieverval;
    
    @ManyToOne
    @JoinColumn(name = "adellijketitel", referencedColumnName = "id")
    private Adellijketitel HisPerssamengesteldenaam.adellijketitel;
    
    @ManyToOne
    @JoinColumn(name = "pers", referencedColumnName = "id")
    private Pers HisPerssamengesteldenaam.pers;
    
    @ManyToOne
    @JoinColumn(name = "predikaat", referencedColumnName = "id")
    private Predikaat HisPerssamengesteldenaam.predikaat;
    
    @Column(name = "dataanvgel", columnDefinition = "numeric", unique = true)
    private BigDecimal HisPerssamengesteldenaam.dataanvgel;
    
    @Column(name = "dateindegel", columnDefinition = "numeric")
    private BigDecimal HisPerssamengesteldenaam.dateindegel;
    
    @Column(name = "tsreg", columnDefinition = "timestamp", unique = true)
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date HisPerssamengesteldenaam.tsreg;
    
    @Column(name = "tsverval", columnDefinition = "timestamp")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date HisPerssamengesteldenaam.tsverval;
    
    @Column(name = "voornamen", columnDefinition = "varchar", length = 200)
    private String HisPerssamengesteldenaam.voornamen;
    
    @Column(name = "voorvoegsel", columnDefinition = "varchar", length = 10)
    private String HisPerssamengesteldenaam.voorvoegsel;
    
    @Column(name = "scheidingsteken", columnDefinition = "varchar", length = 1)
    private String HisPerssamengesteldenaam.scheidingsteken;
    
    @Column(name = "geslnaam", columnDefinition = "varchar", length = 200)
    @NotNull
    private String HisPerssamengesteldenaam.geslnaam;
    
    @Column(name = "indnreeksalsgeslnaam", columnDefinition = "bool")
    @NotNull
    private boolean HisPerssamengesteldenaam.indnreeksalsgeslnaam;
    
    @Column(name = "indalgoritmischafgeleid", columnDefinition = "bool")
    @NotNull
    private boolean HisPerssamengesteldenaam.indalgoritmischafgeleid;
    
    public Actie HisPerssamengesteldenaam.getActieaanpgel() {
        return actieaanpgel;
    }
    
    public void HisPerssamengesteldenaam.setActieaanpgel(Actie actieaanpgel) {
        this.actieaanpgel = actieaanpgel;
    }
    
    public Actie HisPerssamengesteldenaam.getActieinh() {
        return actieinh;
    }
    
    public void HisPerssamengesteldenaam.setActieinh(Actie actieinh) {
        this.actieinh = actieinh;
    }
    
    public Actie HisPerssamengesteldenaam.getActieverval() {
        return actieverval;
    }
    
    public void HisPerssamengesteldenaam.setActieverval(Actie actieverval) {
        this.actieverval = actieverval;
    }
    
    public Adellijketitel HisPerssamengesteldenaam.getAdellijketitel() {
        return adellijketitel;
    }
    
    public void HisPerssamengesteldenaam.setAdellijketitel(Adellijketitel adellijketitel) {
        this.adellijketitel = adellijketitel;
    }
    
    public Pers HisPerssamengesteldenaam.getPers() {
        return pers;
    }
    
    public void HisPerssamengesteldenaam.setPers(Pers pers) {
        this.pers = pers;
    }
    
    public Predikaat HisPerssamengesteldenaam.getPredikaat() {
        return predikaat;
    }
    
    public void HisPerssamengesteldenaam.setPredikaat(Predikaat predikaat) {
        this.predikaat = predikaat;
    }
    
    public BigDecimal HisPerssamengesteldenaam.getDataanvgel() {
        return dataanvgel;
    }
    
    public void HisPerssamengesteldenaam.setDataanvgel(BigDecimal dataanvgel) {
        this.dataanvgel = dataanvgel;
    }
    
    public BigDecimal HisPerssamengesteldenaam.getDateindegel() {
        return dateindegel;
    }
    
    public void HisPerssamengesteldenaam.setDateindegel(BigDecimal dateindegel) {
        this.dateindegel = dateindegel;
    }
    
    public Date HisPerssamengesteldenaam.getTsreg() {
        return tsreg;
    }
    
    public void HisPerssamengesteldenaam.setTsreg(Date tsreg) {
        this.tsreg = tsreg;
    }
    
    public Date HisPerssamengesteldenaam.getTsverval() {
        return tsverval;
    }
    
    public void HisPerssamengesteldenaam.setTsverval(Date tsverval) {
        this.tsverval = tsverval;
    }
    
    public String HisPerssamengesteldenaam.getVoornamen() {
        return voornamen;
    }
    
    public void HisPerssamengesteldenaam.setVoornamen(String voornamen) {
        this.voornamen = voornamen;
    }
    
    public String HisPerssamengesteldenaam.getVoorvoegsel() {
        return voorvoegsel;
    }
    
    public void HisPerssamengesteldenaam.setVoorvoegsel(String voorvoegsel) {
        this.voorvoegsel = voorvoegsel;
    }
    
    public String HisPerssamengesteldenaam.getScheidingsteken() {
        return scheidingsteken;
    }
    
    public void HisPerssamengesteldenaam.setScheidingsteken(String scheidingsteken) {
        this.scheidingsteken = scheidingsteken;
    }
    
    public String HisPerssamengesteldenaam.getGeslnaam() {
        return geslnaam;
    }
    
    public void HisPerssamengesteldenaam.setGeslnaam(String geslnaam) {
        this.geslnaam = geslnaam;
    }
    
    public boolean HisPerssamengesteldenaam.isIndnreeksalsgeslnaam() {
        return indnreeksalsgeslnaam;
    }
    
    public void HisPerssamengesteldenaam.setIndnreeksalsgeslnaam(boolean indnreeksalsgeslnaam) {
        this.indnreeksalsgeslnaam = indnreeksalsgeslnaam;
    }
    
    public boolean HisPerssamengesteldenaam.isIndalgoritmischafgeleid() {
        return indalgoritmischafgeleid;
    }
    
    public void HisPerssamengesteldenaam.setIndalgoritmischafgeleid(boolean indalgoritmischafgeleid) {
        this.indalgoritmischafgeleid = indalgoritmischafgeleid;
    }
    
}
