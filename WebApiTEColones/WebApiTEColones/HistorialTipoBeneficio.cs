//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApiTEColones
{
    using System;
    using System.Collections.Generic;
    
    public partial class HistorialTipoBeneficio
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public HistorialTipoBeneficio()
        {
            this.CambioBeneficioEstudiantes = new HashSet<CambioBeneficioEstudiante>();
        }
    
        public int IdHistorialTipoBeneficio { get; set; }
        public int IdTipoBeneficio { get; set; }
        public int IdAdmi { get; set; }
        public double CantidadBaseTecolones { get; set; }
        public double EquivalenciaColones { get; set; }
        public System.DateTime FechaModificacion { get; set; }
        public string DetalleModificacion { get; set; }
    
        public virtual Administrador Administrador { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CambioBeneficioEstudiante> CambioBeneficioEstudiantes { get; set; }
        public virtual TipoBeneficio TipoBeneficio { get; set; }
    }
}
