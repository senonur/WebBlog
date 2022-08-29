using Entity.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Abstract
{
    public interface IBlogDal:IGenericDal<Blog>
    {
        List<Blog> GetlistWithCategory();
        List<Blog> GetlistWithCategoryByWriter(int id);
    }
}
