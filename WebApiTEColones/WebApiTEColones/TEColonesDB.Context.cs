﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class TEColonesEntities : DbContext
    {
        public TEColonesEntities()
            : base("name=TEColonesEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Administrador> Administradors { get; set; }
        public virtual DbSet<CambioBeneficioEstudiante> CambioBeneficioEstudiantes { get; set; }
        public virtual DbSet<CambioMaterialEstudiante> CambioMaterialEstudiantes { get; set; }
        public virtual DbSet<CentroAcopio> CentroAcopios { get; set; }
        public virtual DbSet<Departamento> Departamentoes { get; set; }
        public virtual DbSet<EncargadoCentroAcopio> EncargadoCentroAcopios { get; set; }
        public virtual DbSet<Estudiante> Estudiantes { get; set; }
        public virtual DbSet<HistorialPromocion> HistorialPromocions { get; set; }
        public virtual DbSet<HistorialTipoBeneficio> HistorialTipoBeneficios { get; set; }
        public virtual DbSet<HistorialTipoMaterial> HistorialTipoMaterials { get; set; }
        public virtual DbSet<InformacionBasica> InformacionBasicas { get; set; }
        public virtual DbSet<InformacionBasicaContacto> InformacionBasicaContactoes { get; set; }
        public virtual DbSet<Promocion> Promocions { get; set; }
        public virtual DbSet<SedeXTEC> SedeXTECs { get; set; }
        public virtual DbSet<TipoBeneficio> TipoBeneficios { get; set; }
        public virtual DbSet<TipoContacto> TipoContactoes { get; set; }
        public virtual DbSet<TipoMaterial> TipoMaterials { get; set; }
        public virtual DbSet<TipoRol> TipoRols { get; set; }
    }
}
