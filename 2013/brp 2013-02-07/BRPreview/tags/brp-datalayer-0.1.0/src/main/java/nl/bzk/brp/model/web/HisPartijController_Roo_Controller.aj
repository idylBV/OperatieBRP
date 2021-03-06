// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package nl.bzk.brp.model.web;

import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import nl.bzk.brp.model.data.kern.Actie;
import nl.bzk.brp.model.data.kern.HisPartij;
import nl.bzk.brp.model.data.kern.Partij;
import nl.bzk.brp.model.data.kern.Sector;
import nl.bzk.brp.model.web.HisPartijController;
import org.joda.time.format.DateTimeFormat;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect HisPartijController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String HisPartijController.create(@Valid HisPartij hisPartij, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, hisPartij);
            return "hispartijs/create";
        }
        uiModel.asMap().clear();
        hisPartij.persist();
        return "redirect:/hispartijs/" + encodeUrlPathSegment(hisPartij.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String HisPartijController.createForm(Model uiModel) {
        populateEditForm(uiModel, new HisPartij());
        return "hispartijs/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String HisPartijController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("hispartij", HisPartij.findHisPartij(id));
        uiModel.addAttribute("itemId", id);
        return "hispartijs/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String HisPartijController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("hispartijs", HisPartij.findHisPartijEntries(firstResult, sizeNo));
            float nrOfPages = (float) HisPartij.countHisPartijs() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("hispartijs", HisPartij.findAllHisPartijs());
        }
        addDateTimeFormatPatterns(uiModel);
        return "hispartijs/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String HisPartijController.update(@Valid HisPartij hisPartij, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, hisPartij);
            return "hispartijs/update";
        }
        uiModel.asMap().clear();
        hisPartij.merge();
        return "redirect:/hispartijs/" + encodeUrlPathSegment(hisPartij.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String HisPartijController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, HisPartij.findHisPartij(id));
        return "hispartijs/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String HisPartijController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        HisPartij hisPartij = HisPartij.findHisPartij(id);
        hisPartij.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/hispartijs";
    }
    
    void HisPartijController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("hisPartij_tsreg_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("hisPartij_tsverval_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void HisPartijController.populateEditForm(Model uiModel, HisPartij hisPartij) {
        uiModel.addAttribute("hisPartij", hisPartij);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("acties", Actie.findAllActies());
        uiModel.addAttribute("partijs", Partij.findAllPartijs());
        uiModel.addAttribute("sectors", Sector.findAllSectors());
    }
    
    String HisPartijController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
